import 'dart:io';

import 'Passwordcheck.dart';

void main() {
  stdout.write('Men!!, Enter your password: ');
  String password = stdin.readLineSync()!;


  PasswordCheck passwordCheck = PasswordCheck(password);

  print(passwordCheck);
}