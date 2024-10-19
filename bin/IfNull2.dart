import 'dart:io';

void main() {
  String _text = 'lanre';

  stdout.write('Enter your word: ');
  String _message = stdin.readLineSync()!;

  if (_message == Null) {
    print('${_text = _message}');
  }

  else {
    print('$_message');
  }
}