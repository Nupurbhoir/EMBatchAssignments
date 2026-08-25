class Student {
  String name;
  int age;
  String course;

  Student(this.name, this.age, this.course);

  void displayStudent() {
    print("Name: $name");
    print("Age: $age");
    print("Course: $course");
  }
}

void task2_constructor() {
  Student student1 = Student(
    "Rahul",
    20,
    "Computer Science",
  );

  Student student2 = Student(
    "Priya",
    21,
    "Computer Science",
  );

  student1.displayStudent();

  print("--------------------");

  student2.displayStudent();
}