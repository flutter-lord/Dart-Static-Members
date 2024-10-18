import 'dart:io';

import 'Password2Class.dart';

void main() {
  stdout.write('Enter your password: ');
  String password = stdin.readLineSync()!;

  Security security = Security(password);
  
  print('${security.output()}');
}