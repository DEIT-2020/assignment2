class Student{
  var firstName;
  var lastName;
  var subjectScores={'subject1':80,'subject2':87,'subject3':82};
  String studentFullName(){
    var studentfullname='$firstName'+' '+'$lastName';
    return studentfullname;
  }
  double averageScore(){
    var averagescore=(subjectScores['subject1']+subjectScores['subject2']+subjectScores['subject3'])/3;
    return averagescore;
  }
  Student(this.firstName,this.lastName);
}
