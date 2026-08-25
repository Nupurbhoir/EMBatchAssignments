class Book {
  String title;
  String author;
  bool isAvailable;

  Book(this.title, this.author, this.isAvailable);

  void displayBook() {
    print("Title: $title");
    print("Author: $author");
    print("Available: ${isAvailable ? "Yes" : "No"}");
  }
}

class Library {
  List<Book> books = [];

  void addBook(Book book) {
    books.add(book);
    print("${book.title} has been added to the library.");
  }

  void displayBooks() {
    print("\n===== Library Books =====");

    for (Book book in books) {
      book.displayBook();
      print("--------------------");
    }
  }

  void borrowBook(String title) {
    for (Book book in books) {
      if (book.title == title) {
        if (book.isAvailable) {
          book.isAvailable = false;
          print("$title has been borrowed.");
        } else {
          print("$title is already borrowed.");
        }
        return;
      }
    }

    print("$title was not found in the library.");
  }

  void returnBook(String title) {
    for (Book book in books) {
      if (book.title == title) {
        book.isAvailable = true;
        print("$title has been returned.");
        return;
      }
    }

    print("$title was not found in the library.");
  }
}

void task10() {
  Library library = Library();

  Book book1 = Book(
    "Harry Potter",
    "J.K. Rowling",
    true,
  );

  Book book2 = Book(
    "The Alchemist",
    "Paulo Coelho",
    true,
  );

  Book book3 = Book(
    "Atomic Habits",
    "James Clear",
    true,
  );

  library.addBook(book1);
  library.addBook(book2);
  library.addBook(book3);

  library.displayBooks();

  print("\n===== Borrow Book =====");
  library.borrowBook("Harry Potter");

  print("\n===== Books After Borrowing =====");
  library.displayBooks();

  print("\n===== Return Book =====");
  library.returnBook("Harry Potter");

  print("\n===== Final Library =====");
  library.displayBooks();
}