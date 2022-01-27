import 'package:flutter/material.dart';

void main() => runApp(HelloApp());

class HelloApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Hello',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Flutter')),
        body: Center(child: HelloButton()));
  }
}

class HelloButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        child: Text('Hello'),
        onPressed: () {
          // aksi yang akan dilakukan
          action(context);
        });
  }

  void action(BuildContext context) {
    var alertDialog = AlertDialog(
        title: Text('Hello World'), content: Text('Welcome Fajrul!'));

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alertDialog;
        });
  }
}
