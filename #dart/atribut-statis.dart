/// //////////////////////////////////
/// Nama File: for.dart
/// //////////////////////////////////

class Point {
  int _x;
  int _y;

  static int counter = 0; // atribut statis

  // konstruktor standar
  Point() {
    _x = 0;
    _y = 0;

    // menaikkan nilai counter
    counter++;
  }

  // konstruktor dengan parameter x dan y
  Point.createInstance(int x, int y) {
    _x = x;
    _y = y;

    // menaikkan nilai counter
    counter++;
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
  Point a, b, c;

  // membuat objek pertama dari kelas point
  a = Point();
  print('Pada saat a dibuat, counter bernilai ${Point.counter}');

  // membuat objek kedua dari kelas point
  b = Point();
  print('Pada saat b dibuat, counter bernilai ${Point.counter}');

  // membuat objek kedua dari kelas point
  c = Point();
  print('Pada saat c dibuat, counter bernilai ${Point.counter}');
}
