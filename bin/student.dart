import 'package:assignment2/assignment2.dart' as assignment2;

  void student(List<String> arguments){
    String firstName='zhang';
    String lastName='san';
    String wholeName=firstName+lastName;
    Map<String,dynamic> subjectScores={"subject1":80,"subject2":87,"subject3":82};
    var s1=subjectScores['subject1'];
    var s2=subjectScores['subject2'];
    var s3=subjectScores['subject3'];
    var averagescore=averageScore(s1,s2,s3);
  }
  int averageScore(s1,s2,s3){
    return (s1+s2+s3)/3;
  }