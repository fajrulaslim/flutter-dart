import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
      return Scaffold(
         appBar: AppBar(
            title: Text('Demo Flutter')
         ),
         body: Material(
            color: Colors.blueAccent,
            child: Center(
               child: Text(
                  'Hello World!',
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                     fontSize: 45.0,
                     fontStyle: FontStyle.italic,
                     color: Colors.white,
                  )
               )
            )
         )
      );
   }
}
