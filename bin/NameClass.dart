class Name {

  String _givenName = '';
  String? _surname = '';


  Name(this._givenName, [this._surname]);
  

  bool surnameisFirst () {
    bool _checkSurname =  _surname!.startsWith(_surname!);
    return _checkSurname;
  }

  String output() {
    if (_surname == true) {
      return _surname ??= _givenName;
    }

    else {
      return '${_surname! + ' ' + _givenName}';
    }
  }

  @override
  String toString() {
    // TODO: implement toString
    return '${output()}';
  }
  
}