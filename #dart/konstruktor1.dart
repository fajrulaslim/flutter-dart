/// //////////////////////////////////
/// Nama File: konstruktor1.dart
/// //////////////////////////////////

// kelas
class Point {
  int x;
  int y;

  // Kontruktor
  Point({this.x, this.y}) {
    this.x = x;
    this.y = y;
  }

  // metode
  void setLocation(int x, int y) {
    this.x = x;
    this.y = y;
  }
}

void main() {
  // mendeklarasikan variabel bertipe point
  Point a;

  // membuat objek dari kelas point
  a = Point(x: 2);

  // nilai x dan y sebelum di ubah
  print('sebelum diubah:');
  print('Titik a terletak di koordinat (${a.x}, ${a.y})');

  //memanggil metode
  a.setLocation(4, 5);

  // nilai x dan y setelah diubah
  print('\nSetelah diubah:');
  print('Titik a terletak di koordinat (${a.x}, ${a.y})');
}
