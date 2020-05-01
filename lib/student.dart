class Student{
  double averageScore()
  {
   return subjectScores['subject1']/3+subjectScores['subject2']/3 + subjectScores['subject3']/3;
  }
  Student(String s, String t);
  String firstName='zhang';
  String lastName='san';
  String studentFullName(){
  return '$firstName $lastName';
  }
  Map subjectScores= {'subject1':80,'subject2':87,'subject3':82};

  
}

