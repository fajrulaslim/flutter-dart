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
  final String teks1 = 'Nilai TextAlign.start pada teks dengan TextDirection.ltr';
  final String teks2 = 'Nilai TextAlign.end pada teks dengan TextDirection.ltr';
  final String teks3 = 'Nilai TextAlign.start pada teks dengan TextDirection.rtl';
  final String teks4 = 'Nilai TextAlign.end pada teks dengan TextDirection.rtl';

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
              this.teks1,
              style: TextStyle(
                fontSize: 18.0,
              ),
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.start,
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            child: Text(
              this.teks2,
              style: TextStyle(
                fontSize: 18.0,
              ),
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.end,
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            child: Text(
              this.teks3,
              style: TextStyle(
                fontSize: 18.0,
              ),
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.start,
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            child: Text(
              this.teks4,
              style: TextStyle(
                fontSize: 18.0,
              ),
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.end,
            ),
          ),
        ],
      ),
    );
  }
}
