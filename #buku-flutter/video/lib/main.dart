import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

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
  VideoPlayerController controller;
  bool isPlaying = false;

  @override
  void initState() {
    super.initState();
    controller = VideoPlayerController.asset('video/test.mp4');
    controller.addListener(() {
      if (isPlaying != controller.value.isPlaying) {
        setState(() {
          isPlaying = controller.value.isPlaying;
        });
      }
    });
    controller.initialize().then((_) {
      // inisialisasi frame
      setState(() {
        
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(        
        title: Text('Demo video_player'),
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: controller.value.initialized ? 
               AspectRatio(
                 aspectRatio: controller.value.aspectRatio,
                 child: VideoPlayer(controller))
               :
               Container(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: isPlaying ? controller.pause : controller.play,
        child: Icon(
          isPlaying ? Icons.pause : Icons.play_arrow
        ),
      ),
    );
  }
}
