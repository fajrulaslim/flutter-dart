/// //////////////////////////////////
/// Nama File: konstruktor2.dart
/// //////////////////////////////////

// kelas
class Point {
  int x;
  int y;

  // Kontruktor standar
  Point() {
    x = 0;
    y = 0;
  }

  // Konstruktor dengan nama tertentu
  Point.createInstance(int x, int y) {
    this.x = x;
    this.y = y;
  }

  // metode lain
  void setLocation(int x, int y) {
    this.x = x;
    this.y = y;
  }
}

void main() {
  // mendeklarasikan variabel bertipe point
  Point a, b;

  // membuat objek dari kelas point menggunakan konstruktor standar
  a = Point();

  // membuat objek dari kelas point menggunakan konstruktor bernama
  b = Point.createInstance(2, 3);

  // nilai x dan y dari objek a dan b
  print('Titik a terletak di koordinat (${a.x}, ${a.y})');
  print('Titik b terletak di koordinat (${b.x}, ${b.y})');
}
