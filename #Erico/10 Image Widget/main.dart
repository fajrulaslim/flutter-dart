import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Image'),
        ),
        body: Center(
          child: Container(
            color: Colors.amber,
            width: 200,
            height: 200,
            padding: EdgeInsets.all(5),
            child: Image(
              image: NetworkImage("https://pbs.twimg.com/profile_images/771240405539008512/GTfPFZmH_400x400.jpg"),
              // fit: BoxFit.none, ukuran asli
              // fit: BoxFit.contain, menampilkan seluruh gambar dengan ruang koosong
              fit: BoxFit.cover, // menampilkan semua gambar tanpa kosong
            ),
          ),
        ),
      ),
    );
  }
}
