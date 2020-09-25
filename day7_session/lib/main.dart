import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Random Image App"),
          centerTitle: true,
        ),
        body: RandomImageApp(),
      ),
    );
  }
}

class RandomImageApp extends StatefulWidget {
  @override
  _RandomImageAppState createState() => _RandomImageAppState();
}

class _RandomImageAppState extends State<RandomImageApp> {
  var key = 'pLZO6uhSB_IPDKLEJtVlHVn-SmOaKtO9prC3qpG0JzY';
  var image;
  int pageno = 2;
  String url =
      'https://api.unsplash.com/photos?page=1;client_id=pLZO6uhSB_IPDKLEJtVlHVn-SmOaKtO9prC3qpG0JzY';
  String imageUrl;
  void getImage() async {
    var response = await get(url);
    if (response.statusCode == 200) {
      print(response.statusCode);
      var data = response.body;
      print(data);
      setState(() {
        image = jsonDecode(data)[pageno]["urls"]["small"];
        pageno++;
      });

      print(image);
    }
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: NetworkImage(image ??
                'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcROfws2zWix13ZG228sBfw5ne_IHdiWPsDp3w&usqp=CAU'),
          ),
          FlatButton(
            onPressed: () {
              getImage();
            },
            child: Text("Get Next Image"),
          )
        ],
      ),
    );
  }
}
