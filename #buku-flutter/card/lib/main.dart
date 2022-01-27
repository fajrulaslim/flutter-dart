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
  final int count = 20;  
  List<bool> items = List<bool>();
  
  @override
  void initState() {
    setState(() {
      for (var i=0; i<this.count; i++) {
        items.add(false);
      }      
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo Card'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            margin: EdgeInsets.only(left:15.0, top:20.0, right:15.0),
            child: GestureDetector(
              child: ListTile(
                title: Text('Item ${index+1}'),
                leading: Icon(Icons.person),
                trailing: Icon(Icons.star),              
              ),
              onTap: () { print('Anda memilih item ${index+1}'); },
            ),
          );
        },                
      ),
    );
  }
}
