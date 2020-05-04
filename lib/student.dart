class Student
{
  String firstName;
  String lastName;

  Student(this.firstName,this.lastName);


  String studentFullName()
  {
    var studentFullName=firstName+' '+lastName;
    return studentFullName;
  }

  Map <String,int>subjectScores={
    'subject1':80,
    'subject2':87,
    'subject3':82,
    };  


  double averageScore()
  {
    var sum=0;
    for(var i=0;i<subjectScores.keys.toList().length;i++){
      sum=sum+subjectScores.values.toList()[i];
    }
      return sum/subjectScores.length;
  }

}


