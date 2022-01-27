/// //////////////////////////////////
/// Nama File: throw.dart
/// //////////////////////////////////

import 'dart:io';

void main() {
  int a, b, c;

  stdout.write('Masukkan nila a: ');
  a = int.parse(stdin.readLineSync());

  stdout.write('Masukkan nila b: ');
  b = int.parse(stdin.readLineSync());

  if (b == 0) {
    // melempar eksepsi
    throw IntegerDivisionByZeroException();
  }

  // pembagian bilangan bulat (sisa bagi akan diabaikan)
  c = a ~/ b;
  print('$a ~/ $b = $c');
}
