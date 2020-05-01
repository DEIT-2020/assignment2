//类名为 Student,而文件名为student
import 'dart:async';

class Student {
//类中有firstName，lastName 属性
  String firstName;
  String lastName;
  Student(this.firstName, this.lastName);
//类中有subjectScores 的Map类型属性，其初始值为{'subject1':80,'subject2':87，'subject3':82}
  Map<String, int> subjectScores = {
    'subject1': 80,
    'subject2': 87,
    'subject3': 82
  };
//类中有averageScore的function，返回上述科目的平均分
  double averageScore() {
    return (subjectScores['subject1'] +
            subjectScores['subject2'] +
            subjectScores['subject3']) /
        subjectScores.length;//获取map长度
  }
//类中有studentFullName的function，返回同学的姓名
  String studentFullName() {
    return '$firstName $lastName';
  }
}