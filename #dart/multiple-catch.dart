/// //////////////////////////////////
/// Nama File: multipe-catch.dart
/// //////////////////////////////////

import 'dart:io';

void main() {
  int a, b, c;

  try {
    stdout.write('Masukkan nila a: ');
    a = int.parse(stdin.readLineSync());

    stdout.write('Masukkan nila b: ');
    b = int.parse(stdin.readLineSync());
    c = a ~/ b;
    print('$a ~/ $b = $c');
  } on FormatException catch (e, s) {
    print('SALAH: Nilai yang dimasukkan bukan bilangan');
  } on IntegerDivisionByZeroException {
    print('SALAH: terjadi pembagian dengan nilai 0');
  } catch (e, s) {
    print('SALAH: terjadi eksepsi bertipe $e');
  } finally {
    print('Selessai ..');
  }
}
