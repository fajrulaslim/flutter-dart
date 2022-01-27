import 'package:flutter/material.dart';

void main() => runApp(HelloApp());

class HelloApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
       child: Text(
          'Hello World!',
          textDirection: TextDirection.ltr,
       )
    );
  }
}
