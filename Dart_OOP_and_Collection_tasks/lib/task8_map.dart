void task8() {
  Map<String, int> books = {
    "Harry Potter": 3,
    "The Alchemist": 2,
    "Atomic Habits": 4,
  };

  print("Book Availability:");
  print(books);

  print("\nHarry Potter Copies:");
  print(books["Harry Potter"]);

  books["The Hobbit"] = 2;

  print("\nUpdated Book Availability:");
  print(books);
}