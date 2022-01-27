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

enum Answer{YES, NO}

class HomeState extends State<Home> {  
  String answer = '';
  String message = '';

  void setAnswer(String value) {
    setState(() {
      answer = value;
      message = 'Anda memilih $answer';
    });
  }

  Future<Null> confirm(BuildContext context) async {
    var simpleDialog = SimpleDialog(
      title: Text('Konfirmasi'),
      children: <Widget> [
        Column(
          children: <Widget> [
            Text('File akan dihapus. Anda yakin?'),
            Container(height:25.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget> [                
                RaisedButton(
                  color: Theme.of(context).primaryColor,
                  child: Text(
                    'Ya', 
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),
                  onPressed: () { Navigator.pop(context, Answer.YES); },
                ),
                Container(width: 5.0,),
                RaisedButton(
                  color: Theme.of(context).primaryColor,
                  child: Text(
                    'Tidak', 
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),
                  onPressed: () { Navigator.pop(context, Answer.NO); },
                ),
                Container(width: 5.0,),
              ],
            )
          ],
        ),
      ],
    );

    if (await showDialog(
      context: context,
      builder: (BuildContext context) {
        return simpleDialog;
    }) == Answer.YES) {
      setAnswer('Ya');
    } else {
      setAnswer('Tidak');
    }
  }  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo SimpleDialog'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            RaisedButton(
              child: Text('Tampilkan Dialog'),
              onPressed: () {
                confirm(context);
              },
            ),
            Container(height:15.0),
            Text(
              message,
              style: TextStyle(
                fontSize: 18.0,
              )
            ),
          ],
        ),
      )
    );
  }
}
