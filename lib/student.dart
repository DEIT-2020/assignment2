class Student{
String firstName;
String lastName;
Map  subjectScores={'subject1':80,'subject2':87,'subject3':82};
Student(this.firstName ,this.lastName){
}
String studentFullName(){
  return this.firstName+' '+this.lastName;
}

double averageScore (){
   int numberA = this.subjectScores['subject1'];
   int numberB = this.subjectScores['subject2'];
   int numberC = this.subjectScores['subject3'];
   int numberD= numberA+numberB+numberC;
   return numberD/3;
}
}