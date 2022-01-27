import 'package:belajar/main_page.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart' as pathProviders;
import 'package:hive/hive.dart';

import 'model/monster.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var appDocumentDirectory =
      await pathProviders.getApplicationDocumentsDirectory();
  Hive.init(appDocumentDirectory.path);
  // Hive.registerAdapter(MonsterAdapter(),);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}
