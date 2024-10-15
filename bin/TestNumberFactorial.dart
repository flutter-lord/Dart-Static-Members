import 'dart:io';

import 'NumberFactorial.dart';

void main() {
  stdout.write('Enter the number you wanna find the factorial: ');
  int number = int .parse(stdin.readLineSync()!);

  Factorial factorial = Factorial(number);

  print(factorial);
}