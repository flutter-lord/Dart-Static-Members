import 'dart:io';

void main() {
  stdout.write('Enter your number: ');
  int _number = int.parse(stdin.readLineSync()!); 

  print(positiveNumber(_number));

  //print(positiveNumber(null));

  String? _name;
  _name = 'ray';
  print(_name.length);

}

bool positiveNumber(dynamic _number) {
  bool _positive = !(_number.isNegative);
  return _positive;
}