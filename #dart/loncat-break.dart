/// //////////////////////////////////
/// Nama File: loncat-break.dart
/// //////////////////////////////////

import 'dart:io';

void main() {
  for (int i = 0; i < 10; i++) {
    stdout.write('$i ');
    if (i == 3) {
      break;
    }
  }
}
