import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

/*
This arrow function is Same as code Above
//void main() {
//  runApp(XylophoneApp());
//}
*/
class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    // call this method when desired
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({int soundNum, Color color}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(soundNum);
        },
        color: color,
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
            buildKey(soundNum: 1, color: Colors.red),
            buildKey(soundNum: 2, color: Colors.green),
            buildKey(soundNum: 3, color: Colors.yellow),
            buildKey(soundNum: 4, color: Colors.teal),
            buildKey(soundNum: 5, color: Colors.blue),
            buildKey(soundNum: 6, color: Colors.pink),
            buildKey(soundNum: 7, color: Colors.purple),
          ],
        )),
      ),
    );
  }
}
