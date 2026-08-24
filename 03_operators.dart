class Student {
  String name = '';
  int score = 0;

  void display() => print('$name scored $score');
}

void main() {
  // 1. Arithmetic & Relational Operators

  int modulus = 17 % 4;
  int integerDivision = 17 ~/ 4;

  print("17 % 4 = $modulus");
  print("17 ~/ 4 = $integerDivision");

  print("10 >= 10: ${10 >= 10}");

  // 2. Type Test (is, is!) & Type Cast (as)

  dynamic val = "Dart Language";

  if (val is String) {
    print("val is a String");
  }

  String text = val as String;

  print("String length: ${text.length}");

  // 3. Logical & Ternary Operators

  bool hasTicket = true;
  bool hasId = false;

  if (hasTicket && hasId) {
    print("Allowed");
  } else {
    print("Denied");
  }

  String status = hasTicket ? "Allowed" : "Denied";

  print("Status: $status");

  // 4. Cascade (..)

  Student student = Student()
    ..name = "John"
    ..score = 95
    ..display();

  // Null-aware cascade (?..)
  Student? nullableStudent;

  nullableStudent?..display();

  print("Cascade operation completed.");
}