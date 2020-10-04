import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class OptionsScreen extends StatefulWidget {
  @override
  _OptionsScreenState createState() => _OptionsScreenState();
}

class _OptionsScreenState extends State<OptionsScreen> {
  bool isNotificationCheck = false;
  bool isImageCheck = false;
  bool isNightModeCheck = false;
  bool isAutoPlayCheck = false;
  List<Widget> setting = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.blueAccent,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: Text("Options"),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(
              Icons.notifications,
              color: Colors.blueAccent,
            ),
            title: Text("Notification"),
            trailing: Switch(
              value: isNotificationCheck,
              onChanged: (newValue) {
                setState(() {
                  isNotificationCheck = newValue;
                });
              },
            ),
          ),
          ListTile(
              leading: Icon(
                MdiIcons.imageBroken,
                color: Colors.blueAccent,
              ),
              title: Text("HD images"),
              trailing: Switch(
                value: isImageCheck,
                onChanged: (newValue) {
                  setState(() {
                    isImageCheck = newValue;
                  });
                },
              )),
          ListTile(
            leading: Icon(
              MdiIcons.weatherNight,
              color: Colors.blueAccent,
            ),
            title: Text("NightMode"),
            trailing: Switch(
              value: isNightModeCheck,
              onChanged: (newValue) {
                setState(() {
                  isNightModeCheck = newValue;
                });
              },
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.play_arrow,
              color: Colors.blueAccent,
            ),
            title: Text("Autoplay"),
            trailing: Switch(
              value: isAutoPlayCheck,
              onChanged: (newValue) {
                setState(() {
                  isAutoPlayCheck = newValue;
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
