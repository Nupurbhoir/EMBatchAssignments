// 1. Sound Null Safety & Late Initialization Lifecycle

class DatabaseManager {
  late final String connectionString = _initConnection();

  String _initConnection() {
    print("Connecting to Database...");
    return "postgres://localhost:5432/db";
  }
}

// 2. Never Type

Never failWithUnreachable(String reason) {
  throw ArgumentError("Fatal Application Error: $reason");
}

// Helper function testing type promotion
void processInput(Object? input) {
  // 3. Type Promotion & Fail-Fast Guard

  if (input == null) {
    failWithUnreachable("Input cannot be null");
  }

  print("Input type: ${input.runtimeType}");
  print("Input length: ${input.toString().length}");
}

// Private field
class Cache {
  String? _cachedData;

  void validateCache() {
    // Copy field to local variable.
    final localData = _cachedData;

    if (localData != null) {
      print("Cache data length: ${localData.length}");
    } else {
      print("Cache is empty");
    }
  }

  void setCache(String data) {
    _cachedData = data;
  }
}

void main() {
  // 4. Late Initialization Edge Case

  late String unassignedText;

  // DO NOT run this yet:
  // print(unassignedText);
  //
  // It would produce LateInitializationError.

  unassignedText = "Initialized";

  print("Late variable: $unassignedText");

  // 5. Null-Aware Operators Combined

  Map<String, List<int>?>? complexData;

  int scoreCount = complexData?['scores']?.length ?? -1;

  print("Scores count: $scoreCount");

  // Let's also test with actual data.

  complexData = {
    "scores": [80, 90, 95],
  };

  scoreCount = complexData?['scores']?.length ?? -1;

  print("Scores count with data: $scoreCount");

  // 6. Bang Operator (!) Safety Boundary

  String? conditionalNullable = "Dart 3 Sound Null Safety";

  if (conditionalNullable != null) {
    print(conditionalNullable!.toUpperCase());
  }

  // DatabaseManager lazy initialization example

  DatabaseManager database = DatabaseManager();

  print("Connection: ${database.connectionString}");

  // Cache type-promotion example

  Cache cache = Cache();

  cache.setCache("Dart Cache Data");

  cache.validateCache();

  // Type promotion example

  processInput("Hello Dart");
}