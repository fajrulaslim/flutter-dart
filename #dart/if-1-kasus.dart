/// //////////////////////////////////
/// Nama File: if-1-kasus.dart
/// //////////////////////////////////

import 'dart:io';

void main() {
  int a;

  stdout.write('Masukkan bilangan bilat: ');
  a = int.parse(stdin.readLineSync());

  // pertama
  if (a > 0) {
    print('$a adalah bilangan bulat positif');
  }

  // kedua
  String respon = (a < 0) ? "negatif" : "positif";
  print(respon);
}
