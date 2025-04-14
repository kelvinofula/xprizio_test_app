import 'package:flutter/material.dart';
import '../models/book.dart';
import '../viewmodels/book_view_model.dart';
import 'book_detail_screen.dart';

class BookListScreen extends StatefulWidget {
  @override
  _BookListScreenState createState() => _BookListScreenState();
}

class _BookListScreenState extends State<BookListScreen> {
  final BookViewModel viewModel = BookViewModel();

  @override
  void initState() {
    super.initState();
    viewModel.addListener(() => setState(() {}));
    viewModel.fetchBooks();
  }

  @override
  void dispose() {
    viewModel.removeListener(() {});
    super.dispose();
  }

  void navigateToDetail(Book book) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => BookDetailScreen(book: book)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Books List')),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: viewModel.books.length,
              itemBuilder: (context, index) {
                final book = viewModel.books[index];
                return ListTile(
                  leading: Image.network(
                    book.coverImageUrl,
                    width: 50,
                    height: 70,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Image.asset(
                        'assets/images/default_cover.png',
                        width: 50,
                        height: 70,
                        fit: BoxFit.cover,
                      );
                    },
                  ),
                  title: Text(book.title),
                  subtitle: Text(book.authorName),
                  onTap: () => navigateToDetail(book),
                );
              },
            ),
          ),
          if (viewModel.isLoading)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircularProgressIndicator(),
            ),
          if (!viewModel.isLoading)
            ElevatedButton(
              onPressed: viewModel.fetchBooks,
              child: Text('Load More'),
            ),
        ],
      ),
    );
  }
}
