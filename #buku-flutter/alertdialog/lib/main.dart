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
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {  
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {  
  
  void onPressed(BuildContext context) {
    var alertDialog = AlertDialog(
      title: Text('Informasi'),
      content: Text('Contoh informasi yang akan ditampilkan.'),
      actions: <Widget>[
        RaisedButton(
          child: Text(
            'OK',
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo AlertDialog'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Tampilkan Dialog'),
          onPressed: () {
            onPressed(context);
          },
        ),
      )
    );
  }
}
