import 'package:belajar/post_result_model.dart';
import 'package:belajar/user_model.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PostResult postResult = null;
  User user = null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("API Http Request Get"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text((user != null)
                  ? user.id + " | " + user.name
                  : "Tidak ada data user"),
              Text((postResult != null)
                  ? postResult.id +
                      " | " +
                      postResult.name +
                      " | " +
                      postResult.job +
                      " | " +
                      postResult.created
                  : "Tidak ada data"),
              RaisedButton(
                onPressed: () {
                  User.connectToApi("3").then((value) {
                    user = value;
                    setState(() {});
                  });
                  PostResult.connetToAPI(user.name, "Spy").then((value) {
                    postResult = value;
                    setState(() {});
                  });
                },
                child: Text("POST dan GET"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
