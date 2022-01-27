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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo FlatButton'),
      ),
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: Row(
          children: <Widget> [            
            FlatButton(
              child: Icon(Icons.add),
              textTheme: ButtonTextTheme.primary,
              onPressed: () { },
            ),
            Container(width: 20.0,),
            FlatButton(
              child: Icon(Icons.edit),
              textTheme: ButtonTextTheme.primary,
              onPressed: () { },
            ),
            Container(width: 20.0,),
            FlatButton(
              child: Text(
                'Delete',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              textTheme: ButtonTextTheme.accent,
              onPressed: () { },
            ),
          ],
        ),
      ),
    );
  }
}
