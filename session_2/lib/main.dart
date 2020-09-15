import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent.shade700,
          title: Text("Session-2"),
          centerTitle: true,
        ),
        body: Center(
          child: Image(
            image: AssetImage('images/nature.jpg'),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
