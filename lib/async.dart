import 'dart:async';

// User model
class User {
  final int id;
  final String name;
  final String? email;
  final String? city;

  User({
    required this.id,
    required this.name,
    this.email,
    this.city,
  });
}

// Mock API function
Future<User?> fetchUserData() async {
  print('Connecting to mock API...');

  // Simulating network delay
  await Future.delayed(const Duration(seconds: 2));

  // Mock API response
return User(
  id: 101,
  name: 'Nupur',
  email: 'nupur@example.com',
  city: 'Mumbai',
);
}

// Function to display user data
void displayUser(User user) {
  print('\n========== USER DATA ==========');
  print('ID    : ${user.id}');
  print('Name  : ${user.name}');
  print('Email : ${user.email ?? 'Email not available'}');
  print('City  : ${user.city ?? 'City not available'}');
  print('================================');
}

// Main function
Future<void> main() async {
  print('================================');
  print('       MOCK API APPLICATION      ');
  print('================================');

  print('\nFetching user data...');

  try {
    // Wait for API response
    User? user = await fetchUserData();

    // Check if response is null
    if (user == null) {
      print('\nNo user data found.');
      return;
    }

    // Display user data
    displayUser(user);

    print('\nData fetched successfully!');
  } catch (e) {
    // Handle errors
    print('\nError while fetching data: $e');
  }

  print('\nProgram completed.');
}