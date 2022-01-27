import 'package:flutter/material.dart';
import 'user_profile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final UserProfile profile = UserProfile(
    name: "Tony Stark",
    role: "Iron Man",
    photoURL: "https://cdn4.iconfinder.com/data/icons/web-ui-color/128/Account-512.png",
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[900],
          title: Text("Doc Comment Example"),
        ),
        body: Center(
          child: profile,
        ),
      ),
    );
  }
}
