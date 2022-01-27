/// //////////////////////////////////
/// Nama File: fungsi-parameter-opsional-nama.dart
/// //////////////////////////////////

import 'dart:io';

void printString(String s, {int n, bool newLine}) {
  if (n == null) n = 1;
  for (int i = 0; i < n; i++) {
    if (newLine == null) {
      stdout.write('${i + 1}. $s\t');
    } else {
      stdout.write('${i + 1}. $s');
    }
  }
}

void main() {
  print('Satu Argumen:');
  printString('Dart');
  print('---');
  print('Dua Argumen:');
  printString('Dart', n: 3);
  print('---');
  print('Tiga Argumen:');
  printString('Dart', newLine: true);
  print('---');
  print('Empat Argumen:');
  printString('Dart', n: 3, newLine: true);
}
