import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    // call this method when desired
    player.play('note$soundNumber.wav');
  }

  Widget buildKey() {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(1);
        },
        color: Colors.red,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildKey(),
            buildKey(),
            buildKey(),
            buildKey(),
            buildKey(),
            buildKey(),
            buildKey(),
          ],
        )),
      ),
    );
  }
}
