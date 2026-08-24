class UserProfile {
  // 1. late Keyword
  late String bio;

  void initBio() {
    bio = "Developer from NYC";
  }
}

// 2. Never Type
Never throwFatalError(String msg) {
  throw Exception("Fatal Error: $msg");
}

void main() {
  // 3. Non-Nullable vs Nullable Types

  int nonNullable = 10;
  int? nullableVal = null;

  print("Non-nullable: $nonNullable");
  print("Nullable: $nullableVal");

  // 4. If-Null Operator (??)
  int result = nullableVal ?? 0;

  print("Result using ??: $result");

  // Null-Aware Assignment (??=)
  nullableVal ??= 5;

  print("Nullable value after ??=: $nullableVal");

  // 5. Null-Aware Access (?.) & Bang Operator (!)

  String? text;

  print("Text length: ${text?.length}");

  // Assign a value before using !
  text = "Dart";

  print("Text length using !: ${text!.length}");

  // 6. Type Promotion

  Object data = "Smart Cast";

  if (data is String) {
    print("Uppercase: ${data.toUpperCase()}");
  }

  // late example
  UserProfile profile = UserProfile();

  profile.initBio();

  print("Bio: ${profile.bio}");
}