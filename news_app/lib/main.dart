import 'package:flutter/material.dart';
import 'package:news_app/screens/MyFeedScreen.dart';
import 'package:news_app/screens/OptionsScreen.dart';
import 'package:news_app/screens/DiscoverScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.white),
      debugShowCheckedModeBanner: false,
      initialRoute: 'DiscoverScreen',
      routes: {
        'MyFeedScreen': (context) => MyFeed(),
        'DiscoverScreen': (context) => DiscoverScreen(),
        'OptionsScreen': (context) => OptionsScreen(),
      },
    );
  }
}
