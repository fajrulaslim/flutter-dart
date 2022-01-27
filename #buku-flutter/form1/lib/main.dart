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
  
  FocusNode myFocusNode;

  @override
  void initState() {
    super.initState();
    myFocusNode = FocusNode();
  }

  @override
  void dispose() {
    myFocusNode.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo autofocus & focusNode'),
      ),
      body: Container(
        margin: EdgeInsets.all(15.0),
        child: Form(
          child: Column(
            children: <Widget> [
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Nama',
                ),
                autofocus: true,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'No. HP',
                ),
                focusNode: myFocusNode,
              ),              
              Container(height: 10.0),
              RaisedButton(
                child: Text('Pindah Fokus'),
                onPressed: () {
                  FocusScope.of(context).requestFocus(myFocusNode);
                },
              )
            ],
          ),
        ),
      )
    );
  }
}
