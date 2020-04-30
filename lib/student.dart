class Student
{
String firstName;
String lastName;


Student(this.firstName,this.lastName);

String studentFullName()
{
return('$firstName'+' '+'$lastName');
}

Map<String,int>subjectScores={'subject1':80,'subject2':87,'subject3':82};

double averageScore(){
return(subjectScores['subject1']+subjectScores['subject2']+subjectScores['subject3'])/3;
}

}