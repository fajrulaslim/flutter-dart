import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layar 1'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Buka Layar 2'),
          onPressed: () {
            Navigator.push(
              context, 
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return SecondScreen(value: 99);  // mengirim nilai 99
                }
              )
            );
          },
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {

  final int value;

  // konstruktor layar kedua membutuhkan satu parameter bertipe int
  SecondScreen({Key key, @required this.value}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Layar 2"),
      ),
      body: Center(
        child: Text('Nilai yang dikirim: ${this.value}'),
      ),
    );
  }
}
