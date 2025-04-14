import 'package:flutter/material.dart';
import '../models/book.dart';

class BookDetailScreen extends StatelessWidget {
  final Book book;
  BookDetailScreen({required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(book.title)),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.network(
                book.coverImageUrl,
                height: 200,
                errorBuilder: (context, error, stackTrace) {
                  return Image.asset(
                    'assets/images/default_cover.png',
                    height: 200,
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            Text(
              book.title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text('Author: ${book.authorName}', style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
