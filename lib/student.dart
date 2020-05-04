class Student{
String firstName;
String lastName;
var subjectScores={'subject1':80,'subject2':87,'subject3':82};
double averageScore(){
  return (subjectScores['subject1']+subjectScores['subject2']+subjectScores['subject3'])/3;}
  /*Student(String firstName,String lastName){
    this.firstName= firstName;
    this.lastName= lastName;*/
   String studentFullName(){
      return firstName+' '+lastName;
   }
    Student(this.firstName,this.lastName);
}
