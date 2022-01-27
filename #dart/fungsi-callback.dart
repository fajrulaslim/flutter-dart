/// //////////////////////////////////
/// Nama File: fungsi-tanpa-nama1.dart
/// //////////////////////////////////

double calc(double a, double b, Function operation) {
  return operation(a, b);
}

void main() {
  // memanggil calc() untuk operasi penjumlaahn
  double add = calc(10.3, 3.0, (a, b) {
    return a + b;
  });

  // memanggil calc() untuk operasi perkalian
  double mul = calc(10.3, 3.0, (a, b) {
    return a * b;
  });

  // memanggil calc() untuk operasi penjumlaahn
  double div = calc(10.3, 3.0, (a, b) {
    return a / b;
  });

  // menampilkan hasil perhitungan
  print(add);
  print(mul);
  print(div);
}
