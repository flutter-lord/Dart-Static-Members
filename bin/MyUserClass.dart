class MyUser {

  String name = '';
  int id = 0;
  String department = '';
  String? hubby = '';

  MyUser(this.name, this.id, this.department, [this.hubby]);
  

  @override
  String toString() {
    // TODO: implement toString
    return 'User(name: $name, id: $id, department: $department)';
  }
}