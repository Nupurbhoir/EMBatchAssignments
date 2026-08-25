class Book {
  String author = "";
  String title = "";

  void displayBook() {
    print("Book Title: $title");
    print("Author: $author");
  }
}

void task1() {
  Book book = Book();

  book.title = "Harry Potter";
  book.author = "J.K. Rowling";

  book.displayBook();
}
