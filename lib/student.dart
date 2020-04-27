class Student{
  var firstName,lastName;
  Student(this.firstName,this.lastName);
  String studentFullName(){
  return '$firstName $lastName';
  }
  var subjectScores={'subject1':80,'subject2':87,'subject3':82};
  double averageScore(){
    var totalScores = subjectScores['subject1']+ subjectScores['subject2']+ subjectScores['subject3'];
    return totalScores/3;
  }
}