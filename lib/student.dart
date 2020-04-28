class Student{
  var firstName;
  var lastName;
  
  Student(this.firstName, this.lastName);
  
  Map<String,dynamic> subjectScores = {'subject1': 80, 'subject2' : 87, 'subject3' : 82};
  
  String studentFullName(){
    return (this.firstName+' '+this.lastName);
  }
  
  dynamic averageScore (){
     return ((this.subjectScores['subject1']+this.subjectScores['subject2']+this.subjectScores['subject3'])/3);
     }
  
}
