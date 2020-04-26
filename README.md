# assignment2
# dart基本知识作业 2 
## 作业说明
- 同上次作业一样需要使用stagehande 生成一个 console-full 的应用
- 你需要在lib文件中开发一个学生类
    - 类名为 Student,而文件名为student
    - 类中有firstName，lastName 属性
    - 类中有subjectScores 的Map类型属性，其初始值为{'subject1':80,'subject2':87，'subject3':82}
    - 类中有averageScore的function，返回上述科目的平均分
      - 你计算平均分的时候，必须使用循环语句操作。
- 你还需要修改自动生成的main_test.dart文件(如果没有此文件，可手动创建一份)，使用如下代码替换这个文件里面的内容。
 ```dart
dart

  import 'package:tutorial_2020/student.dart' as tutor;
import 'package:test/test.dart';
import 'package:tutorial_2020/student.dart';
import 'dart:mirrors';

void main() {
  InstanceMirror studentInstanceMirror =
      reflect(Student('firstName', 'lastName'));
  var cm = reflectClass(Student);
  var instance = reflect(Student);
  var type = studentInstanceMirror.type;

  test('has LastName field', () {
    var lastNameMember = type.instanceMembers[#lastName];
    expect(lastNameMember != null, true);
  });

  test('has firstName field', () {
    var firstNameMember = type.instanceMembers[#firstName];
    expect(firstNameMember != null, true);
  });
  test('has lastName field', () {
    var lastNameMember = type.instanceMembers[#lastName];
    expect(lastNameMember != null, true);
  });
  test(' student name is right', () {
    expect('zhan san', 'zhan san');
  });
  test('has a function named averageScore', () {
    var averageScore = type.instanceMembers[#averageScore];
    expect(averageScore != null, true);
  });
  test('has a map named subjectScores', () {
    var subjectScores = type.instanceMembers[#subjectScores];
    expect(subjectScores != null, true);
  });
  test('average score is right', () {
    var subjectScores = type.instanceMembers[#subjectScores];
    var averageScores;
    if (subjectScores != null) {
      var resultMirror = studentInstanceMirror.invoke(#averageScore, []);
      averageScores = resultMirror.reflectee;
    }
    expect(averageScores == 83.0, true);
  });
}
```
- 替换之后，还需要查看你的pubspec.yaml文件的含有类似'name:xxx'的哪一行(通常是第一行)，使用name后面的内容替换下面代码中的**tutorial_2020** 。如图所示：


## 如何测试自己的代码
- 在自己的代码的根目录，运行如下命令
```
pub run test test/main_test.dart
```
如图所示:
当显示完全通过之后，你就可以同第一次作业一样提交了。
## 务必注意事项
> **你的程序必须遵守上述所有的名称的命名规则，包括大小写，否则无法通过。** 

> **请务必完全按照第一次作业的要求的方式提交**

> **提交截止时间，2020/5/4，23：59**