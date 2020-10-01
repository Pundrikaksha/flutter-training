import 'package:flutter/material.dart';
import 'package:day8_session/services/weather.dart';
import 'city_screen.dart';

class LocationScreen extends StatefulWidget {
  LocationScreen({this.locationWeather});

  final locationWeather;

  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  int temperature;

  String weatherIcon = "";

  String cityName = "";

  String weatherMessage = "";

  void updateUI(dynamic weatherData) {
    setState(() {
      if (weatherData == null) {
        temperature = 9;
        weatherIcon = 'Error';
        cityName = ' ';
        weatherMessage = 'unable to get weather data';
        return;
      } else {
        temperature = (weatherData['main']['temp']).toInt();
        weatherIcon =
            WeatherModel().getWeatherIcon(weatherData['weather'][0]['id']);
        cityName = weatherData['name'];
        weatherMessage = WeatherModel().getMessage(temperature);
        ;
      }
    });
  }

  @override
  void initState() {
    updateUI(widget.locationWeather);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FlatButton(
                  onPressed: () async {
                    var weather = await WeatherModel().getLocationWeather();
                    updateUI(weather);
                  },
                  child: Icon(
                    Icons.near_me,
                    size: 40,
                  ),
                ),
                FlatButton(
                  onPressed: () async {
                    var typedName = await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return CityScreen();
                        },
                      ),
                    );
                    if (typedName != null) {
                      var weatherData =
                          await WeatherModel().getCityWeather(typedName);
                      updateUI(weatherData);
                    }
                  },
                  child: Icon(
                    Icons.location_city,
                    size: 40,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 500,
            ),
            Row(
              children: [
                Text(
                  "$temperature°  ",
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.italic),
                ),
                Text(
                  weatherIcon,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Text("$weatherMessage in the $cityName.",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontSize: 35,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.italic)),
                  ),
                ],
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage("https://wallpapercave.com/wp/wp7437344.jpg"),
              fit: BoxFit.cover,
              colorFilter:
                  ColorFilter.mode(Colors.blueGrey, BlendMode.colorDodge)),
        ),
      ),
    ));
  }
}
