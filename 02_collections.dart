void main() {
  // 1. List
  List<int> numbers = [10, 20, 30];

  numbers.add(40);
  numbers.remove(10);

  print("List: $numbers");
  print("Second item: ${numbers[1]}");

  // 2. Set
  Set<String> fruits = {
    "apple",
    "banana",
    "apple",
  };

  print("Set: $fruits");

  // 3. Map
  Map<String, dynamic> student = {
    "name": "Alex",
    "grade": "A",
  };

  student["age"] = 20;

  print("Student: $student");

  // 4. Type Conversion
  String numberString = "123";

  int number = int.parse(numberString);

  print("Converted integer: $number");

  double decimal = 45.67;

  String formatted = decimal.toStringAsFixed(1);

  print("Formatted decimal: $formatted");
}
