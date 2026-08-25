void task9() {
  Set<String> categories = {
    "Fiction",
    "Science",
    "Technology",
    "History",
    "Fiction",
    "Science",
  };

  print("Book Categories:");
  print(categories);

  bool fictionAvailable = categories.contains("Fiction");

  print("\nIs Fiction category available?");
  print(fictionAvailable);

  categories.add("Biography");

  print("\nUpdated Book Categories:");
  print(categories);
}