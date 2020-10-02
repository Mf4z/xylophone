import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    // call this method when desired
    player.play('note$soundNumber.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Column(
          children: <Widget>[
            FlatButton(
              onPressed: () {
                playSound(1);
              },
              color: Colors.red,
            ),
            FlatButton(
              onPressed: () {
                // call this method when desired
                playSound(2);
              },
              child: null,
              color: Colors.orange,
            ),
            FlatButton(
              onPressed: () {
                playSound(3);
              },
              child: null,
              color: Colors.green,
            ),
            FlatButton(
              onPressed: () {
                playSound(4);
              },
              child: null,
              color: Colors.teal,
            ),
            FlatButton(
              onPressed: () {
                playSound(5);
              },
              child: null,
              color: Colors.teal,
            ),
            FlatButton(
              onPressed: () {
                playSound(6);
              },
              child: null,
              color: Colors.blue,
            ),
            FlatButton(
              onPressed: () {
                playSound(7);
              },
              child: null,
              color: Colors.purple,
            ),
          ],
        )),
      ),
    );
  }
}
