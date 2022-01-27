import 'package:flutter/material.dart';
import './homepage.dart';

void main() => runApp(HelloApp());

class HelloApp extends StatelessWidget {  
   @override
   Widget build(BuildContext context) {
      return MaterialApp(
         title: 'Hello',
         theme: ThemeData(        
            primarySwatch: Colors.blue,
         ),
         home: HomePage()
      );
   }
}