class Book {
  String title;
  String author;

  Book(this.title, this.author);

  void display() {
    print("$title by $author");
  }
}

class EBook extends Book {
  double size;

  EBook(String title, String author, this.size)
      : super(title, author);

  void showSize() {
    print("Size: $size MB");
  }
}

void borrow(Book book) {
  print("${book.title} is borrowed.");
}

void main() {
  String student = "Nupur";

  List<Book> books = [
    Book("Harry Potter", "J.K. Rowling"),
    Book("The Vampire Diaries", "L.J. Smith"),
    EBook("The Summer I Turned Pretty", "Jenny Han", 4.5)
  ];

  print("Student: $student");
  print("Library Books:");

  for (var book in books) {
    book.display();

    if (book is EBook) {
      book.showSize();
    }
  }

  borrow(books[0]);
}