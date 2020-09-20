import 'package:day5_session/question.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Quiz(),
      ),
    );
  }
}

class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  QuestionBank questionBank = QuestionBank();
  int index = 0;
  int count = 0;
  List<Widget> icons = [];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Center(
                child: Text(
                  questionBank.getQ(index),
                  style: TextStyle(color: Colors.white54),
                ),
              ),
            ),
            buildButton(color: Colors.green, userChoice: 'true'),
            buildButton(color: Colors.red, userChoice: 'false'),
            Padding(
              padding: const EdgeInsets.only(left: 10, bottom: 20, top: 20),
              child: Row(
                children: icons,
              ),
            )
          ],
        ),
      ),
    );
  }

  Icon checkAnswer({String userChoice}) {
    IconData iconData;
    Color color;

    if (questionBank.getQCheck(index).toString() == userChoice) {
      color = Colors.green;
      iconData = Icons.check;
      count++;
    } else {
      color = Colors.red;
      iconData = Icons.close;
    }
    return (Icon(
      iconData,
      color: color,
    ));
  }

  Padding buildButton({Color color, String userChoice, IconData iconData}) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 16),
      child: Container(
        height: 55,
        child: FlatButton(
          color: color,
          child: Text(
            userChoice,
          ),
          onPressed: () {
            setState(() {
              icons.add(checkAnswer(userChoice: userChoice));
              if (index == questionBank.getLength() - 1) {
                Alert(
                        context: context,
                        title: ""
                            " Finish",
                        desc: "Your Quiz score :$count out of 3")
                    .show();
                index = -1;
                icons = [];
                count = 0;
              }
              index++;
            });
          },
        ),
      ),
    );
  }
}
