import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Halo Flutter'),
        ),
        body: Center(
          child: Container(
            color: Colors.lightBlue,
            child: Text(
              "Saya sedang melatih kemampuan flutter saya, hanya sampai 2 hari",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
              // maxLines: 2,    // maksimal hanya 2 baris
              // overflow: TextOverflow.ellipsis, // diberi .. bila terpotong
              // softWrap: false,   // hanya sebaris
            ),
            width: 250,
            height: 150,
          ),
        ),
      ),
    );
  }
}
