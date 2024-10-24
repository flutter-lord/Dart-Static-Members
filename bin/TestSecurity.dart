import 'dart:io';

import 'SecurityClass.dart';

void main() {
  
  stdout.write('Enter your password: ');
  String password = stdin.readLineSync()!;

  Security security = Security(password);
  
  print('${security.output()}');
}