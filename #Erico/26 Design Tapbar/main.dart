import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TabBar myTabBar = TabBar(
      // indicatorColor: Colors.red,
      indicator: BoxDecoration(
        color: Colors.red[200],
        border: Border(
          bottom: BorderSide(color: Colors.red, width: 5),
        ),
      ),
      tabs: <Widget>[
        Tab(
          icon: Icon(Icons.comment),
          text: "Comments",
        ),
        Tab(
          icon: Icon(Icons.computer),
          text: "Computers",
        ),
      ],
    );

    return DefaultTabController(
      length: 2, //jumlah tab
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tab Bar"),
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(myTabBar.preferredSize.height),
              child: Container(
                child: myTabBar,
                color: Colors.amber,
              )),
        ),
        body: TabBarView(
          children: <Widget>[
            Center(
              child: Text("Tab 1"),
            ),
            Center(
              child: Text("Tab 2"),
            ),
          ],
        ),
      ),
    );
  }
}
