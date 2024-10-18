class StudentInfo {

  String _firstName = '';
  String _lastName = '';
  int _grade = 0;

  StudentInfo(this._firstName, this._lastName, this._grade);
 
  String get firstName => _firstName;
  String get lastName => _lastName;
  int get grade => _grade;



  @override
  String toString() {
    // TODO: implement toString
    return 'Student(FirstName: $_firstName, LastName: $_lastName, grade: $_grade)';
  }
}