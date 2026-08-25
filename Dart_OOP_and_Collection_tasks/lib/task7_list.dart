void task7() {
  List<String> books = [
    "Harry Potter",
    "The Alchemist",
    "Atomic Habits",
    "The Hobbit",
    "Clean Code",
  ];

  books.add("Rich Dad Poor Dad");

  print("First Book: ${books[0]}");

  print("\nAll Books:");

  for (String book in books) {
    print(book);
  }
}