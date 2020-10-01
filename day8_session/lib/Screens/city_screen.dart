import 'package:flutter/material.dart';

class CityScreen extends StatefulWidget {
  @override
  _CityScreenState createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
  String cityName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://wallpaperxyz.com/wp-content/uploads/Wallpapers-Full-Hd-1920X1080-Full-Hd-1080P-Free-Download-Wallpaperxyz.com-33.jpg'),
                fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: FlatButton(
                  child: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context, cityName);
                  },
                ),
              ),
              TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(),
                style: TextStyle(
                  color: Colors.white,
                ),
                onChanged: (value) {
                  cityName = value;
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
