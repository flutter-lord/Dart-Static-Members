class Security {
  String _password = '';

  Security(this._password);

  String get password => _password = password;

  bool countPassword() {
    bool _totalLength = (_password.length >= 8 && _password.length <= 16);
    return (_totalLength) ? true : false;
  }

  bool containsNumbers() {
    String _numbers = '0123456789';
    bool _checkNumber = _password.contains(_numbers);
    return (_checkNumber) ? true : false;
  }

  bool containsAlphabet() {
    String _alphabet = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz';
    bool _checkAlphabet = _password.contains(_alphabet);
    return (_checkAlphabet) ? true : false;
  }

  bool containsSymbols() {
    String _symbols = '!@#%^&*?|??/';
    bool _checkSymbols = _password.contains(_symbols);
    return (_checkSymbols) ? true : false;
  }

  String output() {
    if (countPassword() == true && containsNumbers() == true && containsAlphabet() == true && containsSymbols() == true) {
      return 'The password you entered is valid';
    }
    else {
      return 'The password you entered is not valid';
    }
  }

  @override
  String toString() {
    // TODO: implement toString
    return '$_password';
  }


}