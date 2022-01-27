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
  TimeOfDay time = TimeOfDay.now();

  Future<Null> selectDate(BuildContext context) async {
    final TimeOfDay selected = await showTimePicker(
      context: context,
      initialTime: this.time
    );

    if (selected != null && selected != this.time) {
      setState(() {
        this.time = selected;        
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo RaisedButton'),
      ),
      body: Center(
        child: Column(
          children: <Widget> [            
            RaisedButton(
              child: Text(
                'Tombol Standar',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              onPressed: () { },
            ),
            RaisedButton(
              child: Text(
                'Tombol Berwarna',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ), 
              onPressed: () { },
              color: Colors.orangeAccent,
              textColor: Colors.white,
            ),
            RaisedButton(
              child: Text(
                'Tombol Tidak Aktif',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              onPressed: null,
              color: Colors.orangeAccent,
              textColor: Colors.white,
              disabledColor: Colors.grey,
              disabledTextColor: Colors.black26,
            ),
          ],
        ),
      ),
    );
  }
}
