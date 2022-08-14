import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';


void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              TextButton(
               style: TextButton.styleFrom(
                primary: Colors.pink,
          ),
                onPressed: () {
                final player=AudioCache();
                player.play('note1.wav');
              },
                child:Text('Press me')
               ),
            ],
          ),
        ),
      ),
    );
  }
}
