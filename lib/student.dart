class Student{
  var firstName, lastName;
  var subjectScores={'subject1':80,'subject2':87,'subject3':82};
  Student(this.firstName,this.lastName);
  double averageScore(){
    return ((subjectScores['subject1']+subjectScores['subject2']+subjectScores['subject3'])/3);
  }
  String studentFullName(){
  return firstName+' '+ lastName;
  } 
}
