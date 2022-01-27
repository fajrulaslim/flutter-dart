/// //////////////////////////////////
/// Nama File: variabel-dynamic.dart
/// //////////////////////////////////

void main() {
  dynamic a;

  // mengisi nilai bertipe int ke dalam variabel a
  a = 1;
  print('Nilai a\t: ' + a.toString());
  print('Tipe a\t: ' + a.runtimeType.toString());

  // mengisi nilai bertipe double ke dalam variabel a
  a = 123.456;
  print('\nNilai a\t: ' + a.toString());
  print('Tipe a\t: ' + a.runtimeType.toString());

  // mengisi nilai bertipe boolean ke dalam variabel a
  a = true;
  print('\nNilai a\t: ' + a.toString());
  print('Tipe a\t: ' + a.runtimeType.toString());

  // mengisi nilai bertipe String ke dalam variabel a
  a = 'Dart';
  print('\nNilai a\t: ' + a);
  print('Tipe a\t: ' + a.runtimeType.toString());
}
