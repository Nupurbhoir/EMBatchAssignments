class LibraryItem {
  String title;

  LibraryItem(this.title);

  void displayTitle() {
    print("Title: $title");
  }
}

class Book extends LibraryItem {
  String author;

  Book(String title, this.author) : super(title);

  void displayAuthor() {
    print("Author: $author");
  }
}

void task4() {
  Book book = Book("Harry Potter", "J.K. Rowling");

  book.displayTitle();
  book.displayAuthor();
}