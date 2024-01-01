import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Center(
            child: Text(
              'Ask me anything'
            ),
          ),
        ),
        body: MagicBalls(),
      ),
    ),
  );
}

class MagicBalls extends StatefulWidget {
  const MagicBalls({super.key});

  @override
  State<MagicBalls> createState() => _MagicBallsState();
}

class _MagicBallsState extends State<MagicBalls> {

  int ballNumber = 1;
  
  void ChangeQuestion(){
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          ChangeQuestion();
        },
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}
