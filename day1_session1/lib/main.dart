import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "flutter Demo",
      home: TextDemo(),
    );
  }
}

class TextDemo extends StatefulWidget {
  @override
  _TextDemoState createState() => _TextDemoState();
}

class _TextDemoState extends State<TextDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DemoApp"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Text("Pundrikaksha"),
        ),
      ),
    );
  }
}
