class Student {
  var firstName, lastName;
  Map<String, int> subjectScores = {
    'subject1': 80,
    'subject2': 87,
    'subject3': 82
  };
  Student(this.firstName, this.lastName);
  double averageScore() {
    var totalScores = subjectScores['subject1'] +
        subjectScores['subject2'] +
        subjectScores['subject3'];
    return totalScores / 3;
  }

  String studentFullName() {
    return '$firstName $lastName';
  }
}
