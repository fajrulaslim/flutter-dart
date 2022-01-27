import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Flutter',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  final String paragraf1 = '''
Teks pada paragraf ini dibuat menggunakan nilai TextAlign.left sehingga teks ditampilkan rata kiri.
  ''';

  final String paragraf2 = '''
Teks pada paragraf ini dibuat menggunakan nilai TextAlign.center sehingga teks ditampilkan pada posisi tengah.
  ''';

  final String paragraf3 = '''
Teks pada paragraf ini dibuat menggunakan nilai TextAlign.right sehingga teks ditampilkan rata kanan.
  ''';

  final String paragraf4 = '''
Teks pada paragraf ini dibuat menggunakan nilai TextAlign.justify sehingga teks ditampilkan rata kiri dan kanan.
  ''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo Text.textAlign'),
      ),
      body: Column(
        children: <Widget> [
          Container(
            margin: EdgeInsets.all(10.0),
            child: Text(
              this.paragraf1,
              style: TextStyle(
                fontSize: 18.0,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            child: Text(
              this.paragraf2,
              style: TextStyle(
                fontSize: 18.0,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            child: Text(
              this.paragraf3,
              style: TextStyle(
                fontSize: 18.0,
              ),
              textAlign: TextAlign.right,
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            child: Text(
              this.paragraf4,
              style: TextStyle(
                fontSize: 18.0,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}
