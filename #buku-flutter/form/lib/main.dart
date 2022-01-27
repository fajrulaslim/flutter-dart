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
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {  
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {  
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  

  void validateInput() {
    FormState form = this.formKey.currentState;
    ScaffoldState scaffold = this.scaffoldKey.currentState;

    SnackBar message = SnackBar(
      content: Text('Proses validasi sukses...'),
    );

    if (form.validate()) {
      scaffold.showSnackBar(message);
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text('Demo Form'),
      ),
      body: Container(
        margin: EdgeInsets.all(15.0),
        child: Form(
          key: formKey,
          child: Column(
            children: <Widget> [
              TextFormField(
                autofocus: true,
                decoration: InputDecoration(
                  hintText: 'Masukkan nama',
                  labelText: 'Nama:',
                  icon: Icon(Icons.person),
                  border: OutlineInputBorder(),                  
                ),
                keyboardType: TextInputType.text,
                validator: (String value) {
                  if (value.isEmpty) {
                    return 'Nama tidak boleh kosong';
                  }
                },
              ),
              Container(height: 8.0),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Masukkan nomor HP',
                  labelText: 'No. HP:',
                  icon: Icon(Icons.phone),
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.phone,
                validator: (String value) {
                  if (value.isEmpty) {
                    return 'No. HP tidak boleh kosong';
                  }                  
                },
              ),
              Container(height: 8.0),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Masukkan Email',
                  labelText: 'Email:',
                  icon: Icon(Icons.email),
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.emailAddress,
                validator: (String value) {
                  if (value.isEmpty) {
                    return 'Email tidak boleh kosong';
                  }                  
                },
              ),
              Container(height: 10.0),
              RaisedButton(
                child: Text('Validasi Data'),
                onPressed: validateInput,
              )
            ],
          ),
        ),
      )
    );
  }
}
