import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<bool> isSelected = [true, false, false];
  ColorFilter colorFilter = ColorFilter.mode(Colors.blue, BlendMode.screen);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ColorFiltered(
        colorFilter: colorFilter,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Selectable Text, Togglebutton, Colorfiltered"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SelectableText(
                  "ini adalah selectable text. Silahkan pilih saya",
                  style: TextStyle(fontSize: 20),
                  showCursor: true,
                  cursorWidth: 3,
                  cursorColor: Colors.red,
                ),
                ToggleButtons(
                  isSelected: isSelected,
                  children: <Widget>[
                    Icon(Icons.alarm),
                    Icon(Icons.adb),
                    Icon(Icons.add_a_photo),
                  ],
                  onPressed: (index) {
                    setState(() {
                      // isSelected[index] = !isSelected[index]; // kalau semua bisa dipiih
                      if(index == 0)
                      colorFilter = ColorFilter.mode(Colors.blue, BlendMode.screen);
                      else if(index == 1)
                      colorFilter = ColorFilter.mode(Colors.green, BlendMode.softLight);
                      else
                      colorFilter = ColorFilter.mode(Colors.purple, BlendMode.multiply);
                      //  kalau salah satu yang dipilih
                      for (int i = 0; i < isSelected.length; i++)
                        isSelected[i] = (i == index) ? true : false;
                    });
                  },
                  fillColor: Colors.red[50],
                  selectedColor: Colors.red,
                  selectedBorderColor: Colors.red,
                  splashColor: Colors.blue,
                  highlightColor: Colors.yellow,
                  borderRadius: BorderRadius.circular(15),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
