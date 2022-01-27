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

class Home extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text('Demo SnackBar'),
      ),
      body: Column(
        children: <Widget> [
          Builder(
            builder: (BuildContext context1) {
              return RaisedButton(
                child: Text('Cara 1'),
                onPressed: () {
                  SnackBar snackBar = SnackBar(
                    content: Text('Pesan ini ditampilkan dengan cara 1'),
                  );
                  Scaffold.of(context1).showSnackBar(snackBar);
                },
              );
            },
          ),          
          RaisedButton(
            child: Text('Cara 2'),
            onPressed: () {
              SnackBar snackBar = SnackBar(
                content: Text('Pesan ini ditampilkan dengan cara 2'),
              );
              scaffoldKey.currentState.showSnackBar(snackBar);
            },
          ),
        ],
      ),
    );
  }
}
