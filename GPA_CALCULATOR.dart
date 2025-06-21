void main() {
  // Sample list of students with scores: [name, ca, exam, project]
  List<List<dynamic>> students = [
    ['Mary', 20.0, 50.0, 20.0],
    ['Kwame', 25.0, 40.0, 30.0],
    ['Owusu', 15.0, 35.0, 15.0],
    ['Yaw', 30.0, 45.0, 25.0],
  ];

  for (var student in students) {
    String name = student[0];
    double ca = student[1];
    double exam = student[2];
    double project = student[3];

    double total = ca + exam + project;
    String grade = assignGrade(total);

    print('Name: $name');
    print('Total Score: $total');
    print('Grade: $grade\n');
  }
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
