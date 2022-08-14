import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );


class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title:Text('Ask me Anything'),
      ),
      body: Ball(),
      backgroundColor: Colors.blue,
    );
  }
}

class Ball extends StatefulWidget {
  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber=1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child:TextButton(
        onPressed: (){
          setState((){
            ballNumber=Random().nextInt(4)+1;
          });
          print("I got clicked");
          print('$ballNumber');
        },
        child:Image(image:AssetImage('images/ball$ballNumber.png'),
      ),
      ),
    );
  }
}
