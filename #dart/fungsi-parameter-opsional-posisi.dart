/// //////////////////////////////////
/// Nama File: fungsi-parameter-opsional-posisi.dart
/// //////////////////////////////////

void printString(String s, [int n]) {
  if (n == null) n = 1;
  for (int i = 0; i < n; i++) {
    print('${i + 1}. $s');
  }
}

void main() {
  printString('Dart');
  print('---');
  printString('Dart', 5);
}
