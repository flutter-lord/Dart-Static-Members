import 'Student.dart';

void main() {

  final student1 = Student(1, 'Ade', 15, 'Science');
  print('The number of student here is ${Student.numberOfStudent}');
  student1.canStudentApplyForWAEC();

  final student2 = Student(2, 'Ayo', 23, 'Education');
  print('The number of student here is ${Student.numberOfStudent}');
  student2.canStudentApplyForWAEC();

   final student3 = Student(3, 'Afo', 25, 'Education');
  print('The number of student here is ${Student.numberOfStudent}');
  student3.canStudentApplyForWAEC();

  final student4 = Student.defaultStudent();


}