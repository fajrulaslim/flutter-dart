import 'dart:ui';
import 'package:flutter/material.dart';

// cek microsoft typography

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Typography"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                "Contoh Text (None)",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                "Contoh Text (Small Caps)",
                style: TextStyle(fontSize: 20, fontFeatures: [FontFeature.enable('smcp')]),
              ),
              Text(
                "Contoh 1/2 (Small Caps & Frac)",
                style: TextStyle(fontSize: 20, fontFeatures: [FontFeature.enable('smcp'), FontFeature.enable('frac')]),
              ),
              Text(
                "Contoh 1/2 (Small Caps & Frac)",
                style: TextStyle(fontSize: 20, fontFeatures: [FontFeature.enable('smcp'), FontFeature.enable('frac')]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
