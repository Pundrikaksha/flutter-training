import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal.shade800,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('images/blueMoon.jpg'),
            ),
            Text(
              "Blue Moon",
              style: TextStyle(
                  fontFamily: 'Pacifico', fontSize: 30, color: Colors.white54),
            ),
            SizedBox(
              height: 20,
              child: Divider(
                color: Colors.teal.shade900,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              color: Colors.white54,
              child: ListTile(
                leading: Icon(
                  Icons.call,
                ),
                title: Text(
                  "Mobile",
                  style: TextStyle(
                    fontFamily: 'Lobster',
                    fontSize: 20,
                    color: Colors.black45,
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              color: Colors.white54,
              child: ListTile(
                leading: Icon(
                  Icons.email,
                ),
                title: Text(
                  "Email",
                  style: TextStyle(
                      fontFamily: 'Lobster',
                      color: Colors.black45,
                      fontSize: 20),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
