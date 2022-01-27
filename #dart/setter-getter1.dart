/// //////////////////////////////////
/// Nama File: setter-getter.dart
/// //////////////////////////////////

// kelas
class Point {
  int _x;
  int _y;

  // Kontruktor standar
  Point() {
    _x = 0;
    _y = 0;
  }

  // Konstruktor dengan parameter x dan y
  Point.createInstance(int x, int y) {
    _x = x;
    _y = y;
  }

  // metode lain
  void setLocation(int x, int y) {
    _x = x;
    _y = y;
  }

  // setter
  set x(int value) => _x = value;
  set y(int value) => _y = value;

  // getter
  int get x => _x;
  int get y => _y;
}

void main() {
  // mendeklarasikan variabel bertipe point
  Point a;

  // membuat objek dari kelas point menggunakan konstruktor standar
  a = Point();

  // memanggil metode setter
  a.x = 3;
  a.y = 4;

  // memanggil metode getter
  print('Titik a terletak di koordinat (${a.x}, ${a.y})');
}
