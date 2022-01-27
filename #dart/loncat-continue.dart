/// //////////////////////////////////
/// Nama File: loncat-continue.dart
/// //////////////////////////////////

import 'dart:io';

void main() {
  for (int i = 0; i < 10; i++) {
    if (i.isEven) {
      continue;
    }
    stdout.write('$i ');
  }
}
