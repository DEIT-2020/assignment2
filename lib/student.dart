class Student
{
  var firstName,lastName;
  var subjectScores={'subject1':80,'subject2':87,'subject3':82};
  Student(this.firstName,this.lastName);

  String studentFullName()
  {
    return firstName+' '+lastName;
  }
  
  double averageScore()
  {
    var sum=0;
    for(var i=0;i<subjectScores.keys.toList().length;i++)
    sum+=subjectScores.values.toList()[i];
    return sum/subjectScores.length;
  }
}