/// //////////////////////////////////
/// Nama File: fungsi-parameter.dart
/// //////////////////////////////////

void printString() {
  for (int i = 0; i < 3; i++) {
    print('${i + 1}. Dart');
  }
}

void printString2(String s, int n) {
  for (int i = 0; i < n; i++) {
    print('${i + 1}. $s');
  }
}

void main() {
  printString();
  print('---');
  printString2('Dart', 5);
}
