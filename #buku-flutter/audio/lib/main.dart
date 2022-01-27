import 'package:flutter/material.dart';
import 'package:audioplayer/audioplayer.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:io';

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
  AudioPlayer audioPlayer;
  AudioPlayerState playerState;

  @override
  void initState() {
    super.initState();
    audioPlayer = AudioPlayer();
    playerState = null;
  }

  Future loadAsset() async {
    return await rootBundle.load('sounds/test.mp3');
  }

  Future<void> play() async {
    final file = new File('${(await getTemporaryDirectory()).path}/test.mp3');
    await file.writeAsBytes((await loadAsset()).buffer.asUint8List());
    await audioPlayer.play(file.path, isLocal: true);
    setState(() {
      playerState = AudioPlayerState.PLAYING;
      if (audioPlayer.state == AudioPlayerState.COMPLETED) {
        playerState = AudioPlayerState.COMPLETED;
      }
    });
  }

  Future<void> pause() async {
    await audioPlayer.pause();
    setState(() => playerState = AudioPlayerState.PAUSED);
  }

  Future<void> stop() async {
    await audioPlayer.stop();
    setState(() {
      playerState = AudioPlayerState.STOPPED;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo audioplayer'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            FloatingActionButton(              
              tooltip: 'Play',
              child: Icon(Icons.play_arrow),
              onPressed: playerState == null ||
                playerState == AudioPlayerState.PAUSED ||
                playerState == AudioPlayerState.STOPPED ||
                playerState == AudioPlayerState.COMPLETED ? play : null,
            ),
            Container(width: 10.0),
            FloatingActionButton(              
              tooltip: 'Pause',
              child: Icon(Icons.pause),
              onPressed: playerState == AudioPlayerState.PLAYING ? pause : null,
            ),
            Container(width: 10.0),
            FloatingActionButton(              
              tooltip: 'Stop',
              child: Icon(Icons.stop),
              onPressed: playerState == AudioPlayerState.PLAYING ? stop : null,
            ),
          ],
        ),
        
      ),
    );
  }
}
