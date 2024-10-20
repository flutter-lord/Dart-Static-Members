import 'dart:io';

void main() {
  stdout.write('Enter your word: ');
  String word = stdin.readLineSync()!;

  print(backword(word));

}

String backword(String word) {

  late String _totalWord;

  int _wordLength = word.length - 1;

   _totalWord = '';

  for (int i = _wordLength; i >= 0; i--) {
    String _characters = word.substring(i, i + 1);

    _totalWord += _characters;
  }
  return _totalWord;
}