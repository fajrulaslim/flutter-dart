/// //////////////////////////////////
/// Nama File: fungsi-parameter-map.dart
/// //////////////////////////////////

void printMap(Map<String, int> map) {
  map.forEach((k, v) {
    print('$k: $v');
  });
}

void main() {
  Map<String, int> a = {'Jeruk': 35, 'Mangga': 22, 'Apel': 50};

  print('Elemen map:');
  printMap(a);
}
