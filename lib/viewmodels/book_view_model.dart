import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/book.dart';

class BookViewModel extends ChangeNotifier {
  int _page = 1;
  bool _isLoading = false;
  final List<Book> _books = [];

  List<Book> get books => _books;
  bool get isLoading => _isLoading;

  Future<void> fetchBooks() async {
    if (_isLoading) return;
    _isLoading = true;
    notifyListeners();

    final response = await http.get(
      Uri.parse('https://openlibrary.org/search.json?q=flutter&page=$_page'),
    );
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final List<Book> newBooks =
          (data['docs'] as List).map((json) => Book.fromJson(json)).toList();
      _books.addAll(newBooks);
      _page++;
    }

    _isLoading = false;
    notifyListeners();
  }
}
