/// //////////////////////////////////
/// Nama File: fungsi-parameter-default.dart
/// //////////////////////////////////

void printString(String s, [int n = 3]) {
  for (int i = 0; i < n; i++) {
    print('${i + 1}. $s');
  }
}

void main() {
  printString('Dart');
  print('---');
  printString('Dart', 5);
}
