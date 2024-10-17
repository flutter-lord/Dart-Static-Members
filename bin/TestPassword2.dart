import 'dart:io';

import 'Password2Class.dart';

void main() {
  stdout.write('Enter your password: ');
  String password = stdin.readLineSync()!;

  Security security = Security(password);

  print(security);
  print(security.countPassword());
  print(security.containsAlphabet());
  print(security.containsNumbers());
  //print(security.containsSymbols());
  print(security.output());
}