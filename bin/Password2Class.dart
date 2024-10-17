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
    bool? _checkNumber;

    for (int i = 0; i <= _numbersLength;) {
      String a = _numbers.substring(i, i + 1); 
      _checkNumber = _password.contains(a); 

      if (_checkNumber == false) {
       i++;
      }

      else if (i == _numbersLength && _checkNumber == false) {
        return _checkNumber = false;
      }

      else {
        return _checkNumber = true;
      }
    }
    return (_checkNumber!) ? true : false; 
  }

  bool containsAlphabet() {
    String _alphabet = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz';
    int _alphabetLength = _alphabet.length - 1;
    bool? _checkAlphabet;

    for (int i = 0; i <= _alphabetLength;) {
      String a = _alphabet.substring(i, i + 1); 
      _checkAlphabet = _password.contains(a); 

      if (_checkAlphabet == false) {
       i++;
      }

      else if (i == _alphabetLength && _checkAlphabet == false) {
        return _checkAlphabet = false;
      } 

      else {
        return _checkAlphabet = true;
      }
    }
    return (_checkAlphabet!) ? true : false; 


  }

  bool containsSymbols() {
    String _symbols = '!@#%^&*|?></';
    int _symbolLength = _symbols.length;
    bool? _checkSymbols;

    for (int i = 0; i <= _symbolLength;) {
      String a = _symbols.substring(i, i + 1); 
      _checkSymbols = _password.contains(a); 

      if (_checkSymbols == false) {
       i++;
      }

      else if (i == _symbolLength && _checkSymbols == false) {
        return _checkSymbols = false;
      }

      else {
        return _checkSymbols = true;
      }
    }
    return (_checkSymbols!) ? true : false;
  }

  String hidePassword() {
    String _hidddenCharacters = '*' * (_password.length - 4);

    String _firstCharacter = _password.substring(0, 1);
    String _secondCharacter = _password.substring(1, 2);
    String _secondToLast = _password.substring(_password.length - 2, _password.length - 1);
    String lastCharacter = _password.substring(_password.length - 1, _password.length);

    String _totalPassword = _firstCharacter + _secondCharacter + _hidddenCharacters + _secondToLast + lastCharacter;

    return _totalPassword; 
  }

  String output() {
    if (countPassword() == true && containsNumbers() == true && containsAlphabet() == true && containsSymbols() == true) {
      return 'Your password ${hidePassword()} that you entered is valid';
    }
    else {
      return 'The password ${hidePassword()} that you entered is not valid';
    }
  }

  @override
  String toString() {
    // TODO: implement toString
    return '$output()';
  }


}