class Security {

  String _password = '';

  Security(this._password);

  bool isPasswordLengthValid() {
    return _password.length >= 8 && _password.length <= 16;
  //   return (passwordLength) ? true : false;
  }

  bool passwordContainNumbers() {
    String numbers = '0123456789';
    int numbersLength = numbers.length - 1;
    var checkNumber;

    for (int i = 0; i <= numbersLength;) {
      String a = numbers.substring(i, i + 1); 
      checkNumber = _password.contains(a); 

      if (checkNumber == false) {
       i++;
      }

      else if (i == numbersLength && checkNumber == false) {
        return false;
      }

      else {
        return true;
      }
    }
    return (checkNumber) ? true : false; 
  }

  bool passwordContainAlphabet() {
    String alphabet = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz';
    int alphabetLength = alphabet.length - 1;
    var checkAlphabet;

    for (int i = 0; i <= alphabetLength;) {
      String a = alphabet.substring(i, i + 1); 
      checkAlphabet = _password.contains(a); 

      if (checkAlphabet == false) {
       i++;
      }

      else if (i == alphabetLength && checkAlphabet == false) {
        return checkAlphabet = false;
      } 

      else {
        return checkAlphabet = true;
      }
    }
    return (checkAlphabet) ? true : false; 

  }

  bool passwordContainSymbols() {
    String symbols = '!@#%^&*|?></';
    int symbolLength = symbols.length;
    var checkSymbols;

    for (int i = 0; i <= symbolLength;) {
      String a = symbols.substring(i, i + 1); 
      checkSymbols = _password.contains(a); 

      if (checkSymbols == false) {
       i++;
      }

      else if (i == symbolLength && checkSymbols == false) {
        return checkSymbols = false;
      }

      else {
        return checkSymbols = true;
      }
    }
    return (checkSymbols) ? true : false;
  }

  String hidePassword() {
    String hidddenCharacters = '';

    String totalPassword = '';

   if (isPasswordLengthValid() == true) {
     hidddenCharacters = '*' * (_password.length - 4);

     String firstCharacter = _password.substring(0, 1);
     String  secondCharacter = _password.substring(1, 2);
     String secondToLast = _password.substring(_password.length - 2, _password.length - 1);
     String  lastCharacter = _password.substring(_password.length - 1, _password.length);

     totalPassword = firstCharacter + secondCharacter + hidddenCharacters + secondToLast + lastCharacter;

    }
    return totalPassword; 
  }

  String output() {
    if (isPasswordLengthValid() == true && passwordContainNumbers() == true && passwordContainAlphabet() == true 
     && passwordContainSymbols() == true) {

      return 'Your password ${hidePassword()} that you entered is valid';
    }

    else if (_password.length < 8) {
     print('Your Password cannot be less than 8 characters');
     return 'Try entering 8 - 16 characters';
   }

   else if (_password.length > 16){
     print('Your password cannot be greater than 16');
     return 'Try entering 8 - 16 characters';
   }

   else {
    return 'Your password ${hidePassword()} that you entered is not valid';
   }
  }

  @override
  String toString() {
    // TODO: implement toString
    return '$output()';
  }

}