void main() {
  // 1. if / else if / else

  int score = 85;

  if (score >= 90) {
    print("Grade A");
  } else if (score >= 75) {
    print("Grade B");
  } else if (score >= 50) {
    print("Grade C");
  } else {
    print("Grade F");
  }

  // 2. Switch Statement & Switch Patterns

  Object shape = (10, 20);

  String shapeResult = switch (shape) {
    (int w, int h) => 'Rectangle $w x $h',
    _ => 'Unknown shape',
  };

  print(shapeResult);

  // 3. Loops

  List<String> items = ['A', 'B', 'C'];

  // Standard for loop
  for (int i = 0; i < items.length; i++) {
    print("For loop: ${items[i]}");
  }

  // for-in loop
  for (String item in items) {
    print("For-in loop: $item");
  }

  // while loop
  int number = 1;

  while (number <= 3) {
    print("While: $number");
    number++;
  }

  // do-while loop
  int count = 1;

  do {
    print("Do-while: $count");
    count++;
  } while (count <= 3);

  // 4. break, continue, assert

  for (int i = 1; i <= 10; i++) {
    if (i == 5) {
      continue;
    }

    if (i == 8) {
      break;
    }

    print("Number: $i");
  }

  int speed = 50;

  assert(
    speed <= 100,
    "Speed limit exceeded",
  );

  print("Speed: $speed");
}