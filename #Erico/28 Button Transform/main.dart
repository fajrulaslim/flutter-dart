import 'package:flutter/material.dart';
import 'package:belajar/colorful_button.dart';

// cek versi qrcode: https://www.qrcode.com/en/about/version.html

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Colorful Button"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ColorfulButtons(Colors.pink, Colors.pinkAccent, Icons.adb),
            ColorfulButtons(Colors.blue, Colors.blueAccent, Icons.computer),
            ColorfulButtons(Colors.yellow, Colors.yellowAccent, Icons.comment),
            ColorfulButtons(Colors.green, Colors.greenAccent, Icons.people),
          ],
        ),
      ),
    );
  }
}
