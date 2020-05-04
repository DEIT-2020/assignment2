class Student {
  var firstName,lastName;
  var subjectScores={'subject1':80,'subject2':87,'subject3':82};
  double averageScore(){
    double score;
    score=(subjectScores['subject1']+subjectScores['subject2']+subjectScores['subject3'])/3;
    return score;
  }
  String studentFullName(var firstName, var lastName){
    return '$firstName $lastName';
  }
  Student(this.firstName,this.lastName);
}
