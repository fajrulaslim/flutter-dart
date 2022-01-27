import 'package:flutter/material.dart';

void main() => runApp(HelloApp());

class HelloApp extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
      return MaterialApp(
         title: 'Demo Flutter',
         home: HomePage(),
      );
   }
}

class HomePage extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
      return Scaffold(
         appBar: AppBar(
            title: Text('Demo Flutter'),            
         ),
         body: Center(
            child: HelloButton(),
         )
      );
   }
}

class HelloButton extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
      return RaisedButton(
         child: Text('Hello'),
         onPressed: () {
            // aksi yang akan dilakukan
            action(context);
         },
      );
   }

   void action(BuildContext context) {
      var alertDialog = AlertDialog(
         title: Text('Event-Handling'),
         content: Text('Hello World!'),
      );

      showDialog(
         context: context, 
         builder: (BuildContext context) { 
           return alertDialog;
         }
      );
   }
}