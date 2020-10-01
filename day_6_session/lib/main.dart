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
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                // colorFilter:
                //     ColorFilter.mode(Colors., BlendMode.colorBurn),
                image: AssetImage('images/background.jpg'),
                fit: BoxFit.cover)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Center(
                    child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                widget.story,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.blueGrey.shade200,
                    fontWeight: FontWeight.w500,
                    fontSize: 25),
              ),
            ))),
            buildButton(),
            buildButton()
          ],
        ),
      ),
    );
  }

  Padding buildButton() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: 47,
        child: FlatButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          color: Colors.white54,
          onPressed: () {},
          child: Text("King went to market"),
        ),
      ),
    );
  }
}
