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
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) { return Home(); },
        '/product': (BuildContext context) { return Product(); },
        '/contact': (BuildContext context) { return Contact(); },
      },
    );
  }
}

Widget buildDrawer(BuildContext context) {
  return Drawer(
    child: ListView(
      children: <Widget>[
        ListTile(
          title: Text('Home'),
          leading: Icon(Icons.home),
          onTap: () {
            Navigator.pushNamed(context, '/');
          },
        ),
        Divider(),
        ListTile(
          title: Text('Product List'),
          leading: Icon(Icons.add_shopping_cart),
          onTap: () {
            Navigator.pushNamed(context, '/product');
          },
        ),
        Divider(),
        ListTile(
          title: Text('Contact'),
          leading: Icon(Icons.phone),
          onTap: () {
            Navigator.pushNamed(context, '/contact');
          },
        ),
      ],
    ),
  );
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo Drawer'),
      ),
      drawer: buildDrawer(context),
      body: Center(
        child: Text('Home page'),
      ),
    );
  }
}

class Product extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo Drawer'),
      ),
      drawer: buildDrawer(context),
      body: Center(
        child: Text('Product page'),
      ),
    );
  }
}

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo Drawer'),
      ),
      drawer: buildDrawer(context),
      body: Center(
        child: Text('Contact page'),
      ),
    );
  }
}
