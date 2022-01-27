/// //////////////////////////////////
/// Nama File: fungsi-parameter-list.dart
/// //////////////////////////////////

List<int> reserve(List<int> list) {
  List<int> result = [];
  for (int i = list.length - 1; i >= 0; i--) {
    result.add(list[i]);
  }
  return result;
}

void main() {
  List<int> a = [10, 20, 30, 40, 50];

  print('Sebelum dibalik');
  print(a.toString());

  print('Sesudah dibalik');
  print(reserve(a).toString());
}
