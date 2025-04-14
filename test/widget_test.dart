import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:xprizio_test_app/models/book.dart';

void main() {
  test('Book model deserializes correctly', () {
    final json = {
      'title': 'Sample Book',
      'author_name': ['John Doe'],
      'cover_i': 12345,
      'key': '/works/OL123456W',
    };

    final book = Book.fromJson(json);

    expect(book.title, 'Sample Book');
    expect(book.authorName, 'John Doe');
    expect(book.coverId, '12345');
    expect(book.key, '/works/OL123456W');
  });

  test('Book cover image URL is correctly generated', () {
    final book = Book(
      title: 'Sample',
      authorName: 'Author',
      coverId: '123',
      key: '/works/key',
    );

    expect(book.coverImageUrl, contains('123'));
  });
}
