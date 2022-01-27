/// //////////////////////////////////
/// Nama File: variabel-deklarasi.dart
/// //////////////////////////////////

void main() {
  // mendeklarasikan variabel
  double panjang;
  double lebar;
  double luas;
  double keliling;
  // mengisi nilai ke dalam variabel
  panjang = 10.0;
  lebar = 8.0;

  // menggunakan variabel untuk proses perhitungan
  luas = panjang * lebar;
  keliling = 2 * (panjang + lebar);

  // menampilkan isi variabel luas dan keliling
  print('Luas persegi panjang\t\t: ' + luas.toString());
  print('Keliling persegi panjang\t: ' + keliling.toString());
}
