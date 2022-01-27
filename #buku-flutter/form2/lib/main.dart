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

  void printValue() {
      print("Teks pada komponen TextField: ${myController.text}");
  }

  @override
  void initState() {
    super.initState();
    myController.addListener(printValue);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo TextEditingController'),
      ),
      body: Container(
        margin: EdgeInsets.all(15.0),
        child: Form(
          child: Column(
            children: <Widget> [
              TextFormField(
                controller: myController,
                decoration: InputDecoration(
                  hintText: 'Ketikkan teks di sini',
                ),
                autofocus: true,
              ),
            ],
          ),
        ),
      )
    );
  }
}
