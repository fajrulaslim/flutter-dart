/// //////////////////////////////////
/// Nama File: switch2.dart
/// //////////////////////////////////

import 'dart:io';

void main() {
  String a;

  stdout.write('Masukkan nomor bulan: ');
  a = stdin.readLineSync();

  switch (a) {
    case 'satu':
      print('1');
      break;
    case 'dua':
      print('2');
      break;
    case 'tiga':
      print('3');
      break;
    default:
      {
        print('Selain 1, 2, 3');
        exit(1);
      }
  }
}
