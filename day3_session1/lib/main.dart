import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("Dice App"),
          centerTitle: true,
        ),
        backgroundColor: Colors.red,
        body: Dice(),
      ),
    );
  }
}

class Dice extends StatefulWidget {
  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int num1 = 1;
  int num2 = 1;
  final random = Random();
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: FlatButton(
                  child: Image.asset('images/dice$num1.png'),
                  onPressed: () {
                    setState(() {
                      num1 = random.nextInt(5) + 1;
                      num2 = random.nextInt(5) + 1;
                    });
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  child: Image.asset('images/dice$num2.png'),
                  onPressed: () {
                    setState(() {
                      num2 = random.nextInt(5) + 1;
                      num1 = random.nextInt(5) + 1;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.only(bottom: 20, top: 10),
          color: Colors.red,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Dice ${num1 > num2 ? 'first' : 'second'} is Winner",
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w500,
                color: Colors.white54,
              ),
            ),
          ),
        )
      ],
    );
  }
}
