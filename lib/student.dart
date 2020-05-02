class Student{
   String firstName,lastName;
   Student(this.firstName,this.lastName);

   Map <String ,dynamic> subjectScores = {'subject1':80,'subject2':87,'subject3':82};
   
   void averageScore(){
     return((subjectScores['subject1']+subjectScores['subject2']+subjectScores['subject3'])/3);
   }

   String studentFullName(){
     return("$firstName"+" "+"$lastName");
   }
 }

