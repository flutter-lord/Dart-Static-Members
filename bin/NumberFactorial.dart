class Factorial {
  int _number = 0;

  Factorial(int number) {
    _number = number;
  }

  int getFactorial() {

    int  _totalNumber = 1;
    for (int i = _number; i >= 1; i--) {
      _totalNumber *= i;
    }
    return _totalNumber;
  }

  @override
  String toString() {
    // TODO: implement toString
    return 'The factorial of $_number is ${getFactorial()}';
  }
}