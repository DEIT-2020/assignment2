import 'package:test/test.dart';
import 'package:assignment2/student.dart';
import 'dart:mirrors';

void main() {
 InstanceMirror studentInstanceMirror =
     reflect(Student('zhang','san'));
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

class Student {
  var firstName,lastName;
  var subjectScores={'subject1':80,'subject2':87,'subject3':82};
  Student(this.firstName,this.lastName);
  double averageScore(){
    var totalScores=subjectScores['subject1']+subjectScores['subject2']+subjectScores['subject3'];
    return totalScores/3;
  }
}
