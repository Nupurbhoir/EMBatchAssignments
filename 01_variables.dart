void main() {
  // 1. var Keyword
  var cityName = "Tokyo";
  print("City: $cityName");
  print("Runtime Type: ${cityName.runtimeType}");

  // 2. Object vs dynamic
  Object objVal = 42;
  print("Object value: $objVal");

  dynamic dynVal = "Hello";
  print("Dynamic value: $dynVal");

  dynVal = 100;
  print("Dynamic after reassignment: $dynVal");

  // Calling toUpperCase() now would cause a runtime error
  // because dynVal is an int.
  // print(dynVal.toUpperCase());

  // 3. final vs const
  final DateTime currentTime = DateTime.now();
  const double piValue = 3.14159;

  print("Current Time: $currentTime");
  print("Pi: $piValue");

  // final accepts DateTime.now() because it is assigned at runtime.
  // const requires a compile-time constant.

  // 4. int & double
  int age = 25;
  double temperature = 98.6;

  print("Age: $age");
  print("Temperature: $temperature");
  print("Age / 2: ${age / 2}");

  // 5. String & Interpolation
  String firstName = "Ada";
  String lastName = "Lovelace";

  String fullName = "$firstName $lastName";

  print("User: $fullName (Length: ${fullName.length})");

  // 6. bool
  bool isLoggedIn = false;

  print("Before toggle: $isLoggedIn");

  isLoggedIn = !isLoggedIn;

  print("After toggle: $isLoggedIn");

  // 7. Runes & UTF-32
  String emoji = "🎯";

  print("Emoji: $emoji");
  print("Code Units: ${emoji.codeUnits}");
  print("Runes: ${emoji.runes}");
}