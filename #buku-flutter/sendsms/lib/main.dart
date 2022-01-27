import 'package:flutter/material.dart';
import 'package:sms/sms.dart';

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
  TextEditingController numController = TextEditingController();
  TextEditingController msgController = TextEditingController();

  sendSMS(String number, String message) async {
    SimCardsProvider provider = SimCardsProvider();
    var cards = await provider.getSimCards();
    SimCard card = cards[0];  // menggunakan SIM 1
    SmsSender sender = SmsSender();
    SmsMessage msg = SmsMessage(number, message);
    sender.sendSms(msg, simCard: card);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo Kirim SMS'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: numController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: 'Nomor HP',
                ),
              ),
              Container(height: 30.0),
              TextField(
                controller: msgController,
                maxLines: 5,
                decoration: InputDecoration(
                  hintText: 'Pesan',
                ),
              ),
              Container(height: 30.0),
              FloatingActionButton(
                child: Icon(Icons.sms),
                tooltip: 'Kirim SMS',
                onPressed: () {
                  sendSMS(numController.text, msgController.text);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
