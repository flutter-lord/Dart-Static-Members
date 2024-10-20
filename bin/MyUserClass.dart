class MyUser {

  String _name = '';
  int _id = 0;
  String _department = '';
  String? _hubby = '';

  MyUser(this._name, this._id, this._department, [this._hubby]);


  @override
  String toString() {
    // TODO: implement toString
    return 'User(name: $_name, id: $_id, department: $_department, Hubby: $_hubby';
  }
}