abstract class LibraryItem {
  void displayDetails();
}

class Book implements LibraryItem {
  String title;
  String author;

  Book(this.title, this.author);

  @override
  void displayDetails() {
    print("Book Title: $title");
    print("Author: $author");
  }
}

void task6() {
  Book book = Book("Harry Potter", "J.K. Rowling");

  book.displayDetails();
}