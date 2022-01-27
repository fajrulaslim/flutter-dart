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
  
  List<Widget> createItems(int count) {
    List<Widget> items = List<Widget>();
    for (var i=0; i<count; i++) {
      items.add(
        ListTile(
          title: Text('Item ${i+1}'),
          leading: Icon(Icons.person),
          trailing: Icon(Icons.delete),
        )
      );
      items.add(Divider(color: Colors.black26));
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo ListView'),
      ),
      body: ListView(
        padding: EdgeInsets.all(30.0),
        children: createItems(20),
      ),
    );
  }
}
