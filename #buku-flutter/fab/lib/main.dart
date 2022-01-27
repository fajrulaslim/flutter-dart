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
        title: Text('Demo FloatingActionButton'),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(30.0),
          child: Row(
            children: <Widget> [            
              FloatingActionButton(
                tooltip: 'Add',
                child: Icon(Icons.add),
                onPressed: () { },
              ),
              Container(width: 20.0,),
              FloatingActionButton(
                tooltip: 'Edit',
                child: Icon(Icons.edit),
                backgroundColor: Colors.orangeAccent,
                onPressed: () { },
              ),
              Container(width: 20.0,),
              FloatingActionButton(
                tooltip: 'Delete',
                child: Icon(Icons.delete),
                backgroundColor: Colors.redAccent,
                onPressed: () { },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
