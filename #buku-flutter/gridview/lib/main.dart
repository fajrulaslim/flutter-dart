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
  List<String> names = [
    'bumi','gunung','langit',
    'laut','matahari','niagara'
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo GridView'),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: List.generate(names.length, (index) {
          return GridTile(            
            child: GestureDetector(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('images/' + names[index] + '.jpeg'),
                  )
                ),
              ),
              onTap: () { print('Anda memilih ${names[index]}.jpeg'); },
            ),
          );
        }),
      ),
    );
  }
}
