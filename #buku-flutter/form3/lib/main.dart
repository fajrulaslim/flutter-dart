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
  
  final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo TextEditingController 1'),
      ),
      body: Container(
        margin: EdgeInsets.all(15.0),
        child: Form(
          child: Column(
            children: <Widget> [
              TextFormField(
                controller: myController,
                decoration: InputDecoration(
                  hintText: 'Ketikkan nama anda',
                ),
                autofocus: true,
              ),
              Container(height: 10.0,),
              RaisedButton(
                child: Text('OK'),
                onPressed: () {
                  return showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        content: Text(myController.text +
                          ', selamat datang di pemrograman Android'),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      )
    );
  }
}
