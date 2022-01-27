import 'package:flutter/material.dart';
import 'package:contacts_service/contacts_service.dart';
import 'dart:math';

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

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo Akses Kontak'),
      ),
      body: SafeArea(
        child: ContactList(),
      )
    );
  }
}

class ContactList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: ContactsService.getContacts(),
      builder: (BuildContext context, AsyncSnapshot<Iterable<Contact>> snapshot) {
        if (!snapshot.hasData) {
          return Center(child: CircularProgressIndicator());
        }

        return ListView(
          children:
              snapshot.data.map((contact) => ContactItem(contact)).toList(),
        );
      },
    );
  }
}

class ContactItem extends StatelessWidget {
  final Contact contact;

  ContactItem(this.contact);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget> [
        ListTile(
          leading: CircleAvatar(
            backgroundColor:
              Colors.primaries[Random().nextInt(Colors.primaries.length - 1)],
            child: Text(
              contact.displayName?.substring(0, 1)?.toUpperCase() ?? ""
            )
          ),
          title: Text(contact.displayName ?? "<null>"),
          subtitle: Text(contact.phones.elementAt(0).value),
        ),
        Divider(),
      ],
    );
  }
}