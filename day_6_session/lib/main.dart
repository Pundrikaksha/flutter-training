import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: StoryApp(),
      ),
    );
  }
}

class StoryApp extends StatefulWidget {
  final String story =
      "once upon a time in mumbai ther was a king who is very smart ";
  @override
  _StoryAppState createState() => _StoryAppState();
}

class _StoryAppState extends State<StoryApp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/background.png'),
                  fit: BoxFit.cover)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(child: Center(child: Text(widget.story))),
              buildButton(),
              buildButton()
            ],
          ),
        ),
      ),
    );
  }

  Container buildButton() {
    return Container(
      height: 60,
      child: FlatButton(
        color: Colors.red,
        onPressed: () {},
        child: Text("King went to market"),
      ),
    );
  }
}
