/// //////////////////////////////////
/// Nama File: variabel-global.dart
/// //////////////////////////////////

import 'dart:io';
// memanggil fungsi stdout

// mendeklarasikan variabel global
int globalVar = 10;

void updateGlobalVar(int val) {
  // mengubah nilai globalVar
  globalVar = val;
}

void printGlobalVar() {
  // menampilkan nilai globalVar
  print(globalVar);
}

void main() {
  stdout.write('Sebelum diubah: ');
  printGlobalVar();

  // mengubah nilai variabel global
  updateGlobalVar(22);

  stdout.write('Setelah diubah: ');
  printGlobalVar();
}
