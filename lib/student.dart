class Student{
  int j;
  var firstName;
  var lastName;
  var subjectScores={'subject1':80,'subject2':87,'subject3':82};
  double averageScore(){
    return (subjectScores['subject1']+subjectScores['subject2']+subjectScores['subject3'])/3;
  }
  String studentFullName(){
    return firstName+' '+lastName;
  }
  void printtt(){
    print(subjectScores.keys);
    print(subjectScores.values);
    print(subjectScores.length);
    subjectScores.forEach((k,v)=>j=j+v);
    print(j);
  }
  Student(this.firstName,this.lastName);
}