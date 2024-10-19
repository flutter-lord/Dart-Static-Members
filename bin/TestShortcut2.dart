import 'dart:io';

void main() {
  stdout.write('Enter your number: ');
  dynamic _number = int.parse(stdin.readLineSync()!); 

  print(positiveNumber(_number));

  print(positiveNumber(null));

}

bool positiveNumber(_number) {
  bool _positive = !(_number.isNegative);
  return _positive;
}