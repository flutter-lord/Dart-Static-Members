import 'dart:io';

import 'NameClass.dart';

void main() {
  stdout.write('Enter your name: ');
  String _givenName = stdin.readLineSync()!;

  stdout.write('Enter your surname if you have, if not leave if empty: ');
  String _surname = stdin.readLineSync()!;

  Name name = Name(_givenName, _surname);

  print(name);
}