# 📚 Xprizio Test App

Xprizio Test App is a Flutter application built as a demo project that:

- Displays a splash screen with a Lottie animation
- Fetches paginated book data from the OpenLibrary API
- Shows a styled list of books
- Allows users to view detailed information about each book
- Follows MVVM architecture
- Includes unit tests for model validation

---

## 🚀 Features

- **Splash Screen** with Lottie animation
- **Book List View** with pagination support
- **Book Detail View** with fallback image handling
- **MVVM Architecture**
- **Unit Tests** for the `Book` model
- **Responsive UI** with Google Fonts

---

## 📸 Screenshots

> *Include screenshots of your splash screen, book list, and book detail view here.*

---

## 🔧 Project Structure

```
lib/
├── models/
│   └── book.dart
├── screens/
│   ├── book_detail_screen.dart
│   ├── book_list_screen.dart
│   └── splash_screen.dart
├── viewmodels/
│   └── book_view_model.dart
├── main.dart
```

---

## 📦 Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.2
  http: ^0.13.6
  lottie: ^2.7.0
  google_fonts: ^6.1.0
  flutter_riverpod: ^2.4.0
  provider: ^6.1.1

dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^2.0.3
```

---

## 🧪 Running Tests

To run unit tests:

```bash
flutter test
```

---

## 📂 Assets

Ensure the following assets are included in your `pubspec.yaml`:

```yaml
flutter:
  assets:
    - assets/animations/splash.json
    - assets/images/default_cover.png
```

---

## 🌐 API Reference

- [OpenLibrary Search API](https://openlibrary.org/dev/docs/api/search)
  - Example: `https://openlibrary.org/search.json?q=flutter&page=1`

---

## ✅ Requirements Met

- ✅ At least 3 screens
- ✅ Paged REST API consumption
- ✅ Styled list and detail views
- ✅ Lottie-based splash screen
- ✅ 2+ unit tests

---

## 👨‍💻 Author

Kelvin Ofula  
[LinkedIn](https://www.linkedin.com/in/kelvinofula)

---

## 📃 License

This project is for demo purposes only.
