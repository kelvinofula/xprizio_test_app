class Book {
  final String title;
  final String authorName;
  final String coverId;
  final String key;

  Book({
    required this.title,
    required this.authorName,
    required this.coverId,
    required this.key,
  });

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
      title: json['title'] ?? 'No Title',
      authorName:
          (json['author_name'] != null && json['author_name'].isNotEmpty)
              ? json['author_name'][0]
              : 'Unknown Author',
      coverId: json['cover_i']?.toString() ?? '',
      key: json['key'] ?? '',
    );
  }

  String get coverImageUrl =>
      coverId.isNotEmpty
          ? 'https://covers.openlibrary.org/b/id/$coverId-M.jpg'
          : 'https://via.placeholder.com/150';
}
