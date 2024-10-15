class PasswordCheck {
  String _password = '';

  PasswordCheck(String password) {
    _password = password;
  }

  String displayPassword() {

    int _passwordLength = _password.length;
    int _hidePassword = _passwordLength - 4;

    String i = _password.substring(0, 1);
    String j = _password.substring(1, 2);
    String k = _password.substring(_passwordLength - 3, (_passwordLength - 2));
    String l = _password.substring(_passwordLength - 2, (_passwordLength - 1));

    String ShowHidePassword = i + j + (('*') * _hidePassword) + k + l;
    return ShowHidePassword;
  }

  @override
  String toString() {
    // TODO: implement toString
    return 'The password you entered is ${displayPassword()}';
  }
}