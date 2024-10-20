class MyUser {

  String name;
  int id;
  String department;
  //String? hubby = '';

  MyUser({required this.name, required this.id, required this.department});

  String userInfo() {
    return 'User(name: $name, id: $id, department: $department)';
  }


  @override
  String toString() {
    // TODO: implement toString
    return userInfo();
  }
}