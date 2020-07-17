 class Student
 {
    String firstName;
    String lastName;
    var subjectScores={'subject1':80.0,'subject2':87.0,'subject3':82.0};
    Student(this.firstName,this.lastName);
    String studentFullName()
    {
      String studentFullName = firstName + ' '+lastName;
      //String fullName= firstName+lastName;
      return studentFullName;
    }
    double averageScore()
    {
      double sum;
      sum=subjectScores['subject1']+subjectScores['subject2']+subjectScores['subject3'];
      double average;
      average=sum/3;
      return average;
    }
  }
