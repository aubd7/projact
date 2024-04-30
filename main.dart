import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          title: Text('Luck game'),
          backgroundColor: Colors.lightBlue,
        ),
        body: LuckGame(),
      ),
    ),
  );
}

class LuckGame extends StatefulWidget {
  @override
  _LuckGameState createState() => _LuckGameState();
}

class _LuckGameState extends State<LuckGame> {
  int leftDice = 6;
  int rightDice = 5;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$leftDice.png'),
              onPressed: () {
                setState(() {
                  leftDice = Random().nextInt(6) + 1;
                  rightDice = Random().nextInt(6) + 1;
                });
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$rightDice.png'),
              onPressed: () {
                setState(() {
                  rightDice = Random().nextInt(6) + 1;
                  leftDice = Random().nextInt(6) + 1;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}