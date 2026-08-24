class APIConfig {
  final String endpoint;
  final int timeoutSeconds;
  final bool enableLogs;

  APIConfig({
    required this.endpoint,
    this.timeoutSeconds = 30,
    this.enableLogs = false,
  });
}

// Dart does not allow optional positional [] and named {}
// parameters together in the same function.
// Therefore message is implemented as an optional named parameter.
void sendNotification(
  String recipient, {
  String message = "Default Hello",
  bool urgent = false,
  required String sender,
}) {
  print(
    'From: $sender -> To: $recipient | '
    'Msg: $message | Urgent: $urgent',
  );
}

// Higher-Order Function
List<int> customMap(
  List<int> list,
  int Function(int) action,
) {
  List<int> result = [];

  for (var item in list) {
    result.add(action(item));
  }

  return result;
}

// Lexical Closure
Function createCounter() {
  int count = 0;

  return () {
    count++;
    return count;
  };
}

void main() {
  // APIConfig
  APIConfig config = APIConfig(
    endpoint: "https://api.example.com",
    timeoutSeconds: 60,
    enableLogs: true,
  );

  print("Endpoint: ${config.endpoint}");
  print("Timeout: ${config.timeoutSeconds}");
  print("Logs enabled: ${config.enableLogs}");

  // sendNotification
  sendNotification(
    "Nupur",
    message: "Welcome to Dart!",
    sender: "Admin",
    urgent: true,
  );

  // Higher-order function with anonymous arrow function
  List<int> numbers = [1, 2, 3, 4, 5];

  List<int> squares = customMap(
    numbers,
    (x) => x * x,
  );

  print("Original numbers: $numbers");
  print("Squared numbers: $squares");

  // Two independent counters
  Function counterA = createCounter();
  Function counterB = createCounter();

  print("Counter A: ${counterA()}");
  print("Counter A: ${counterA()}");

  print("Counter B: ${counterB()}");
}