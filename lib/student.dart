class Student
{
  String firstName;
  String lastName;
  Student(this.firstName,this.lastName);

  Map <String,dynamic>subjectScores={
    'subject1':80,
    'subject2':87,
    'subject3':82,
    };  

 double averageScore(double score[],int n)
  {
   double sum=0.0;
   int i;
    for( i=0;i<subjectScores.keys.toList().length;i++){
      sum+=score[i];
    }
      return sum/subjectScores.length;
       String studentFullName()
  {
    return studentFullName=this.firstName+' '+this.lastName;
  }
  }

}
