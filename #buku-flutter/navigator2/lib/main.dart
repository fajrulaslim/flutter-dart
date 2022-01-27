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
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  navigateScreen(BuildContext context) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) { 
          return SecondScreen();
        },
      ),
    );
    SnackBar snackBar = SnackBar(
      content: Text('Nilai yang dipilih: $result'),
    );
    scaffoldKey.currentState.showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text('Layar 1'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Buka Layar 2'),
          onPressed: () {
            navigateScreen(context);
          },
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Layar 2"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Text('Pilih nilai yang akan dikembalikan'),
            Container(height: 15.0),
            RaisedButton(
              onPressed: () {
                Navigator.pop(context, 88);
              },
              child: Text('Nilai 88'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pop(context, 99);
              },
              child: Text('Nilai 99'),
            ),
          ],
        ),
      ),
    );
  }
}
