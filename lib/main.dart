import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:async';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.green[400],
      appBar: AppBar(
        title: Center(child: Text('Guess the Ace')),
        backgroundColor: Colors.orange[800],
      ),
      body: GuessAce(),
    ),
  ));
}

class GuessAce extends StatefulWidget {
  @override
  _GuessAceState createState() => _GuessAceState();
}

class _GuessAceState extends State<GuessAce> {
  int card = 0;
  void RandomAce() {
    setState(() {
      card = Random().nextInt(4) + 1;
      Timer(Duration(seconds: 3), () {
        setState(() {
          card = 0;
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset('images/A$card.png'),
              onPressed: () {
                RandomAce();
              },
            ),
          )
        ],
      ),
    );
  }
}
