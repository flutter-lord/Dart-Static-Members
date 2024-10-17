class Security {
  String _password = '';

  Security(this._password);

  String get password => _password = password;


  bool countPassword() {
    bool _passwordLength = (_password.length >= 8 && _password.length <= 16);
    return (_passwordLength) ? true : false;
  }

  bool containsNumbers() {
    String _numbers = '0123456789';
    int _numbersLength = _numbers.length - 1;
    bool ? _checkNumber;

    for (int i = 0; i <= _numbersLength;) {
      String a = _numbers.substring(i, i + 1); 
      _checkNumber = _password.contains(a); 

      if (_checkNumber == false) {
       i++;
      }
      else {
        return _checkNumber = true;
      }
    }
    return (_checkNumber!) ? true : false; 
  }

  void containsAlphabet() {
    String _alphabet = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz';
    int _alphabetLength = _alphabet.length - 1;

    //return (_checkAlphabet) ? true : false;
  }

  bool containsSymbols() {
    String _symbols = '!@#%^&*?|??/';
    bool _checkSymbols = _password.contains(_symbols);
    return (_checkSymbols) ? true : false;
  }

  String output() {
    if (countPassword() == true && containsNumbers() == true) {
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