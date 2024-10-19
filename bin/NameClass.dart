class Name {
  String _givenName = '';
  String? _surname = '';


  Name(this._givenName, [this._surname]);
  

  bool surnameisFirst () {
    bool _checkSurname =  _surname!.startsWith(_surname!);
    return _checkSurname;
  }

  String nameOrder() {
    return'${_surname! + ' ' + _givenName} ';
  }
  String output() {
    if (_surname == null) {
      return _givenName;
    }

    else {
      return '${nameOrder()}';
    }
  }

  @override
  String toString() {
    // TODO: implement toString
    return '${output()}';
  }

  

}