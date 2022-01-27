/// //////////////////////////////////
/// Nama File: metode.dart
/// //////////////////////////////////

// kelas
class Point {
  int x;
  int y;

  // metode
  void setLocation(int xValue, int yValue) {
    x = xValue;
    y = yValue;
  }
}

void main() {
  // mendeklarasikan variabel bertipe point
  Point a;

  // membuat objek dari kelas point
  a = Point();

  //memanggil metode
  a.setLocation(2, 3);

  print('Titik a terletak di koordinat (${a.x}, ${a.y})');
}
