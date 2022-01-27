/// //////////////////////////////////
/// Nama File: kelas.dart
/// //////////////////////////////////

// kelas
class Point {
  int x;
  int y;
}

void main() {
  // mendeklarasikan variabel bertipe point
  Point a;

  // membuat objek dari kelas point
  a = Point();

  // mengakses atribut point
  a.x = 2;
  a.y = 3;

  print('Titik a terletak di koordinat (${a.x}, ${a.y})');
}
