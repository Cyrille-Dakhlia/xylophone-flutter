import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  static final AudioPlayer player = AudioPlayer();
  // 3,3,5,3, 3,3,5,3, 3,5,8,7,6,6,5, 2,3,4,2, 2,3,4, 2,4,7,6,5,7,8

  // Future<void> playSound(int soundNumber) {
  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildKey({int soundNumber, Color keyColor}) {
    return Expanded(
      child: Container(
        color: keyColor,
        margin: EdgeInsets.all(0.5),
        child: TextButton(
          onPressed: () => playSound(soundNumber),
          child: Text("Play note $soundNumber"),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(soundNumber: 1, keyColor: Colors.redAccent),
              buildKey(soundNumber: 2, keyColor: Colors.orangeAccent),
              buildKey(soundNumber: 3, keyColor: Colors.yellowAccent),
              buildKey(soundNumber: 4, keyColor: Colors.lightGreenAccent),
              buildKey(soundNumber: 5, keyColor: Colors.greenAccent),
              buildKey(soundNumber: 6, keyColor: Colors.lightBlueAccent),
              buildKey(soundNumber: 7, keyColor: Colors.purpleAccent),
              buildKey(soundNumber: 8, keyColor: Colors.deepPurpleAccent),
            ],
          ),
        ),
      ),
    );
  }
}
