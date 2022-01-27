/// //////////////////////////////////
/// Nama File: do-while.dart
/// //////////////////////////////////

import 'dart:io';

const String USERNAME = 'admin';
const String PASSWORD = 'admin123';

void main() {
  String username, password;
  bool ok = false;

  do {
    stdout.write('Username: ');
    username = stdin.readLineSync();
    stdout.write('Password: ');
    password = stdin.readLineSync();

    if (username == USERNAME && password == PASSWORD) {
      ok = true;
    } else {
      print('Username/password salah. Silahkan ulangi!\n');
    }
  } while (!ok);

  print('Selamat, Anda berhasil login!');
}
