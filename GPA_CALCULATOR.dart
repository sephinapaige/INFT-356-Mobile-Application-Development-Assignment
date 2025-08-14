import 'dart:io';

void main() {
  print("Enter number of students: ");
  int numStudents = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= numStudents; i++) {
    print("\nEnter name of student $i:");
    String name = stdin.readLineSync()!;

    print("Enter Continuous Assessment score:");
    double ca = double.parse(stdin.readLineSync()!);

    print("Enter Exam score:");
    double exam = double.parse(stdin.readLineSync()!);

    print("Enter Project score:");
    double project = double.parse(stdin.readLineSync()!);

    double total = ca + exam + project;
    String grade = assignGrade(total);

    print("\n--- Result for $name ---");
    print("Total Score: $total");
    print("Grade: $grade");
  }
}

String assignGrade(double score) {
  if (score >= 80 && score <= 100) return "A";
  else if (score >= 75) return "B+";
  else if (score >= 70) return "B";
  else if (score >= 65) return "C+";
  else if (score >= 60) return "C";
  else if (score >= 55) return "D+";
  else if (score >= 50) return "D";
  else if (score >= 45) return "E";
  else return "F";
}

