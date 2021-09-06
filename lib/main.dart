import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: <Widget>[
            xylophoneButton(1, Colors.red),
            xylophoneButton(2, Colors.orange),
            xylophoneButton(3, Colors.yellow),
            xylophoneButton(4, Colors.green),
            xylophoneButton(5, Colors.teal),
            xylophoneButton(6, Colors.blue),
            xylophoneButton(7, Colors.purple),
          ],
        ),
      ),
    );
  }
}

Widget xylophoneButton(int fileNum, Color color) {
  return  Expanded(
    child: MaterialButton(
      color: color,
      minWidth: double.infinity,
      onPressed: (() {
        final player = AudioCache();
        player.play('note$fileNum.wav');
      }),
    ),
  );
}
