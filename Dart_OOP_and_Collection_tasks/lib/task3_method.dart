class Book {
  String title;
  String author;

  Book(this.title, this.author);

  void borrowBook() {
    print("$title by $author has been borrowed.");
  }

  void returnBook() {
    print("$title by $author has been returned.");
  }

  void displayDetails() {
    print("Book Title: $title");
    print("Author: $author");
  }
}

void task3() {
  Book book = Book("Harry Potter", "J.K. Rowling");

  book.displayDetails();
  book.borrowBook();
  book.returnBook();
}