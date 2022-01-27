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
  List<String> list = ['Dart', 'Java', 'Kotlin', 'C++', 'C#', 'JavaScript'];
  String item = 'Dart';
  
  void onChanged(String value) {
    setState(() {
      item = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo DropdownButton'),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(30.0),
        child: Column(
          children: <Widget> [
            Text('Item aktif: $item'),
            DropdownButton(
              value: item,
              items: list.map((String val) {
                return DropdownMenuItem(
                  value: val,
                  child: Row(
                    children: <Widget> [
                      Icon(Icons.phone_android),
                      Text(val),
                    ],
                  ),
                );
              }).toList(),
              onChanged: (String value) { onChanged(value); },              
            ),
          ],
        )
      ),
    );
  }
}
