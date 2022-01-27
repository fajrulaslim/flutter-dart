/// //////////////////////////////////
/// Nama File: fungsi-tanpa-nama1.dart
/// //////////////////////////////////

double calc(double a, double b, Function operation) {
  return operation(a, b);
}

double add(double a, double b) => a + b;
double mul(double a, double b) => a * b;
double div(double a, double b) => a / b;

void main() {
  // menampilkan hasil perhitungan
  print('${calc(10.0, 3.0, add)}');
  print('${calc(10.0, 3.0, mul)}');
  print('${calc(10.0, 3.0, div)}');
}
