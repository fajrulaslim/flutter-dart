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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo Image'),
      ),
      body: ListView(
        children: <Widget> [
          Image.asset(
            'images/foto1.jpeg',
            height: 250.0,
            fit: BoxFit.cover,
          ),
          Divider(),
          Image.asset(
            'images/foto2.jpeg',
            height: 250.0,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
