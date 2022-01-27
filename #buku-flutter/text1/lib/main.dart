import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Flutter',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  final String longText = '''
Organic chemistry is the chemistry subdiscipline for the scientific study of structure, properties, and reactions of organic compounds and organic materials (materials that contain carbon atoms).[1] Study of structure determines their chemical composition and formula. Study of properties includes physical and chemical properties, and evaluation of chemical reactivity to understand their behavior. The study of organic reactions includes the chemical synthesis of natural products, drugs, and polymers, and study of individual organic molecules in the laboratory and via theoretical (in silico) study.
  ''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo Text.softWrap'),
      ),
      body: Column(
        children: <Widget> [
          Container(
            margin: EdgeInsets.all(5.0),
            padding: EdgeInsets.all(10.0),
            child: Text(
              'Organic Chemistry',
              style: TextStyle(
                fontSize: 26.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            height: 10.0,
          ),
          Container(
            margin: EdgeInsets.all(5.0),
            padding: EdgeInsets.all(10.0),
            child: Text(
              this.longText,
              style: TextStyle(
                fontSize: 20.0,                
              ),
              softWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}