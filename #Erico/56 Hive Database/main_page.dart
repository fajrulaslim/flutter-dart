import 'package:belajar/model/monster.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hive Database"),
      ),
      body: FutureBuilder(
        future: Hive.openBox("monsters"),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return Center(
                child: Text(snapshot.error),
              );
            } else {
              var monsterBox = Hive.box("monsters");
              if (monsterBox.length == 0) {
                monsterBox.add(Monster("Vampire", 1));
                monsterBox.add(Monster("Jelly Ou", 5));
              }
              return WatchBoxBuilder(
                box: monsterBox,
                builder: (context, monsters) => Container(
                  margin: EdgeInsets.all(20),
                  child: ListView.builder(
                    itemCount: monsters.length,
                    itemBuilder: (context, index) {
                      Monster monster = monsters.getAt(index);
                      return Container(
                        padding: EdgeInsets.all(20),
                        margin: EdgeInsets.only(bottom: 10),
                        decoration:
                            BoxDecoration(color: Colors.white, boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              offset: Offset(3, 3),
                              blurRadius: 6),
                        ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(monster.name +
                                " [level: " +
                                monster.level.toString() +
                                "]"),
                            Row(
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(Icons.trending_up),
                                  color: Colors.green,
                                  onPressed: () {
                                    monsters.putAt(
                                        index,
                                        Monster(
                                            monster.name, monster.level + 1));
                                  },
                                ),
                                IconButton(
                                  icon: Icon(Icons.content_copy),
                                  color: Colors.amber,
                                  onPressed: () {
                                    monsters.add(
                                        Monster(monster.name, monster.level));
                                  },
                                ),
                                IconButton(
                                  icon: Icon(Icons.delete),
                                  color: Colors.red,
                                  onPressed: () {
                                    monsters.deleteAt(index);
                                  },
                                )
                              ],
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              );
            }
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
