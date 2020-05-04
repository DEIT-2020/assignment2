// import 'package:assignment3/assignment3.dart' as assignment3;

import 'package:test/test.dart';
// import 'package:assignment3/student.dart';
import 'dart:mirrors';
class Student {
  String firstName='zhang';
  String lastName='san';
  String studentFullName(firstName,lastName){
    return '$firstName $lastName';
  }
  Map<String, double> subjectScores = {
    'subject1': 80,
    'subject2': 87,
    'subject3': 82
  };
  double averageScore(Map<String, double> subjectScores) {
    double sum =0;
    for (int i = 1; i <= subjectScores.length; i++) {
      sum += subjectScores['subject$i'];
    }
    return sum/subjectScores.length;
  }
}
void main() {
 InstanceMirror studentInstanceMirror =
     reflect(Student('zhang', 'san'));
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
test('has a function named studentFullName', () {
   var studentFullName = type.instanceMembers[#studentFullName];
   expect(studentFullName != null , true);
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
test('student full name  is right', () {
   var studentFullName = type.instanceMembers[#studentFullName];
   var fullName;
   if (studentFullName != null) {
     var resultMirror = studentInstanceMirror.invoke(#studentFullName, []);
     fullName = resultMirror.reflectee;
   }
   expect(fullName == 'zhang san', true);
 });

}