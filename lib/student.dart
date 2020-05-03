class Student
{
  String firstName;
  String lastName;
  Student(this.firstName,this.lastName);
  String studentFullName()
  {
    return '$firstName $lastName';
  }

  var subjectScores={'subject1':80,'subject2':87,'subject3':82};

  double averageScore()
  {
    int sum=0;
    int i;
    for(i=0;i<subjectScores.length;i++)
    {
    sum+=subjectScores.values.toList()[i];
    }
    return  sum/i;
  }
}
