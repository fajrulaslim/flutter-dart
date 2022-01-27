/// //////////////////////////////////
/// Nama File: user-defined-exception.dart
/// //////////////////////////////////

import 'dart:io';

class NegativeError implements Exception {
  String message;

  NegativeError([this.message]);
}

void main() {
  int a;

  try {
    stdout.write('Masukkan bilangan non-negatif: ');
    a = int.parse(stdin.readLineSync());

    if (a < 0) {
      throw NegativeError(); // melempar eksepsi negativeError
    }
    print('Anda memasukkan nilai $a');
  } on FormatException catch (e, s) {
    print('SALAH: Nilai yang dimasukkan bukan bilangan');
  } on NegativeError catch (e, s) {
    print('SALAH: anda memasukkan nilai negatif');
  } catch (e, s) {
    print('SALAH: terjadi eksepsi bertipe $e');
  }
}
