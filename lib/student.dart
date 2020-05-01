class Student {
  var firstName,lastName;
  Map subjectScores={'subject1':80,'subject2':87,'subject3':82};
  Student(this.firstName,this.lastName);

double averageScore(){
  var total=subjectScores['subject1']+subjectScores['subject2']+subjectScores['subject3'];
  return total/3;
}

String studentFullName(){
  return '$firstName $lastName';
}

}