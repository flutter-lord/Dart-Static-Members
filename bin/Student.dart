class Student {

  int _id = 0;
  String _name = '';
  int _age = 0;
  String _department = '';
  static int _numberOfStudent = 0;


  Student(this._id, this._name, this._age, this._department) {
    _numberOfStudent++;
  }

  factory Student.defaultStudent() {

    return Student(0, "unknown", 0, 'unknown');
  }

  static int get numberOfStudent => _numberOfStudent;

  void canStudentApplyForWAEC() {

    if (this._age >= 18) {
      print('Eligible for application!');
    }
    else {
      print('Not eligible for aplication!');
    }

  }

  @override
  String toString() {
    return 'Student(id = $_id, name = $_name, age = $_age, department = $_department)';
  }



}