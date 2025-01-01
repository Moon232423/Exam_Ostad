import 'dart:io';

// A answer:
abstract class Role {
  void displayRole();
}


//B answer

class Person implements Role {
  String name;
  int age;
  String address;

  Person(this.name, this.age, this.address);

  String getName() => name;
  int getAge() => age;
  String getAddress() => address;

  @override
  void displayRole() {

  }
}

//C Answer
class Student extends Person {
  String studentID;
  String grade;
  List<int> courseScores;

  Student(String name, int age, String address, this.studentID, this.grade, this.courseScores)
      : super(name, age, address);

  @override
  void displayRole() {
    print("Role: Student");
  }


  double calAvgScore() {
    int total = 0;
    for (int i = 0; i < courseScores.length; i++) {
      total += courseScores[i];
    }

    return total / courseScores.length;
  }
}


//D Answer
class Teacher extends Person {
  String teacherID;
  List<String> coursesTaught;

  Teacher(String name, int age, String address, this.teacherID, this.coursesTaught)
      : super(name, age, address);

  @override
  void displayRole() {
    print("Role: Teacher");
  }

  void displayCoursesTaught() {
    print("Courses Taught:");
    for (int i = 0; i < coursesTaught.length; i++) {
      print("- ${coursesTaught[i]}");
    }
  }




}

//E answer:
class StudentManagementSystem{

}

// In main method
void main() {
  Student student = Student("John Doe", 20, "123 Main St", "S12345", "A", [90, 85, 82]);
  Teacher teacher = Teacher("Mrs. Smith", 35, "456 Oak St", "T98765", ["Math", "English", "Bangla"]);

  print("Student Information:");
  student.displayRole();
  print("Name: ${student.name}");
  print("Age: ${student.age}");
  print("Address: ${student.address}");
  print("Average Score: ${student.calAvgScore().toStringAsFixed(1)}");


  print("");


  print("Teacher Information:");
  teacher.displayRole();
  print("Name: ${teacher.name}");
  print("Age: ${teacher.age}");
  print("Address: ${teacher.address}");
  teacher.displayCoursesTaught();
}






