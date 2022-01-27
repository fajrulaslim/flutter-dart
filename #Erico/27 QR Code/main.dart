import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

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
      // backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: Text("QRCode"),
      ),
      body: Center(
        child: QrImage(
          version: 6,// normalnya 4
          // backgroundColor: Colors.grey,
          foregroundColor: Colors.black,
          errorCorrectionLevel: QrErrorCorrectLevel.M,
          padding: EdgeInsets.all(30),
          size: 300,
          data: "http://fajrulaslim.com",
        ),
      ),
    );
  }
}
