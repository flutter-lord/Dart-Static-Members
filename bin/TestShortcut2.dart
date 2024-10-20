import 'dart:io';

void main() {
  stdout.write('Enter your number: ');
  int? _number = int.parse(stdin.readLineSync()!); 

  if (_number == true) {
    print(null);
  }

  else {
    print(!(_number.isNegative));
  }

  // print(positiveNumber(_number));

}

// bool positiveNumber(dynamic _number) {