/// //////////////////////////////////
/// Nama File: Tipedata.dart
/// //////////////////////////////////

void main() {
  // tipe int
  int dec = 255;
  int hex1 = 0xff;
  int hex2 = 0xff;
  print(dec);
  print(hex1);
  print(hex2);
  print('-----');

  //tipe double
  double a = 130.0;
  double b = 1.3e2;
  double c = 1.3E-5;
  print(a);
  print(b);
  print(c);
  print('-----');

  // tipe num, bisa int bisa double
  num d = 13;
  num e = 13.45;
  print(d);
  print(e);
  print('-----');

  // tipe teks
  String s1 = 'Dart';
  String s2 = 'Pemrograman';
  String spasi = ' ';
  String s3 = s2 + spasi + s1;
  print(s1[0]);
  print(s3);
  print('-----');
}
