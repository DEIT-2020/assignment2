class Student {
  String firstName;
  String lastName;
  String studentFullName(){
    return '$firstName $lastName';
  }
  Map<String, double> subjectScores = {
    'subject1': 80,
    'subject2': 87,
    'subject3': 82
  };
  double averageScore(Map<String, double> subjectScores) {
    double sum =0;
    for (int i = 1; i <= subjectScores.length; i++) {
      sum += subjectScores['subject$i'];
    }
    return sum/subjectScores.length;
  }
}