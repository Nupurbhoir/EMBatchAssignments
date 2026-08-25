mixin Logger {
  void logMessage() {
    print("Library action completed successfully.");
  }
}

class Book with Logger {
  String title;
  String author;

  Book(this.title, this.author);

  void borrowBook() {
    print("$title has been borrowed.");
    logMessage();
  }
}

void task5() {
  Book book = Book("Harry Potter", "J.K. Rowling");

  book.borrowBook();
}