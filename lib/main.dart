import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Magic 8 Ball'),
            backgroundColor: Colors.blue[900],
          ),
          backgroundColor: Colors.blue,
          body: BallPage(),
        ),
      ),
    );

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: FlatButton(
          child: Image.asset('images/ball$ballNumber.png'),
          onPressed: () {
            randomizeBall();
          },
        ),
      ),
    );
  }

  void randomizeBall() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }
}
