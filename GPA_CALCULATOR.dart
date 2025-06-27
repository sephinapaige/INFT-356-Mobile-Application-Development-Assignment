import 'dart:io';
void main() {

    stdout.write("Enter student name: ");
    String name = stdin.readLineSync();

    stdout.write("Enter CA: ");
    double ca = stdin.readLineSync();

    stdout.write("Enter Exam score: ");
    double exam = stdin.readLineSync();

    stdout.write("Enter Project score: ");
    double project = stdin.readLineSync();

    double total = ca + exam + project;
    String grade = assignScore(total);

    print("Name: $name");
    print("Total Score: $total");
    print("Grade: $grade");
}

String assignGrade(double totalScore) {
  if (totalScore >= 80 && totalScore <= 100) {
    return 'A';
  } else if (totalScore >= 75) {
    return 'B+';
  } else if (totalScore >= 70) {
    return 'B';
  } else if (totalScore >= 65) {
    return 'C+';
  } else if (totalScore >= 60) {
    return 'C';
  } else if (totalScore >= 55) {
    return 'D+';
  } else if (totalScore >= 50) {
    return 'D';
  } else if (totalScore >= 45) {
    return 'E';
  } else {
    return 'F';
  }
}
