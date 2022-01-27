/// //////////////////////////////////
/// Nama File: try-on.dart
/// //////////////////////////////////

import 'dart:io';

void main() {
  List<String> days = [
    'Minggu',
    'Senin',
    'Selasa',
    'Rabu',
    'Kamis',
    'Jumat',
    'Sabtu'
  ];
  int index;

  stdout.write('Masukkan nomor hari: ');
  index = int.parse(stdin.readLineSync());

  try {
    print('Hari ke-$index adalah ${days[index - 1]}');
  } catch (e, s) {
    print('SALAH: tidak ada hari ke-$index');
    print('Jenis eksepsi: $e');
    print('Stacktrace: \n$s');
  }
}
