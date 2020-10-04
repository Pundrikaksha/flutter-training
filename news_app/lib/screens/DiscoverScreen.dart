import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class DiscoverScreen extends StatefulWidget {
  @override
  _DiscoverScreenState createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.blueAccent,
            ),
            onPressed: () {
              Navigator.pushNamed(context, 'OptionsScreen');
            },
          ),
          title: Text("Discover News"),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(
                Icons.arrow_forward_ios,
                color: Colors.blueAccent,
              ),
              onPressed: () {
                Navigator.pushNamed(context, 'MyFeedScreen');
              },
            ),
          ],
        ),
        body: ListView(
          children: [
            // Text(
            //    "Category",
            //    style: TextStyle(
            //      fontWeight: FontWeight.bold,
            //      fontSize: 25,
            //      color: Colors.grey.shade700,
            //    ),
            //  ),
            // Container(
            //   child: ListView(
            //     scrollDirection: Axis.horizontal,
            //     children: [
            //       Container(
            //         child: Icon(MdiIcons.tableLarge),
            //       )
            //     ],
            //   ),
            // ),
            Text(
              "Suggested Topics",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.grey.shade700,
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Material(
                    elevation: 10,
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, 'MyFeedScreen');
                      },
                      child: Container(
                        alignment: AlignmentDirectional.bottomCenter,
                        child: Text(
                          "IPL News",
                          style: TextStyle(
                              color: Colors.grey.shade500,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        height: 220,
                        width: 180,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage('images/ipl.jpg'),
                          fit: BoxFit.cover,
                        )),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Material(
                    elevation: 10,
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, 'MyFeedScreen');
                      },
                      child: Container(
                        alignment: AlignmentDirectional.bottomCenter,
                        child: Text(
                          "Technology",
                          style: TextStyle(
                              color: Colors.grey.shade500,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        height: 220,
                        width: 180,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage('images/technology.jpg'),
                          fit: BoxFit.cover,
                        )),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Material(
                    elevation: 10,
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, 'MyFeedScreen');
                      },
                      child: Container(
                        alignment: AlignmentDirectional.bottomCenter,
                        child: Text(
                          "travel",
                          style: TextStyle(
                              color: Colors.grey.shade500,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        height: 220,
                        width: 180,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage('images/travel.jpg'),
                          fit: BoxFit.cover,
                        )),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Material(
                    elevation: 10,
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, 'MyFeedScreen');
                      },
                      child: Container(
                        alignment: AlignmentDirectional.bottomCenter,
                        child: Text(
                          "Entertainment News",
                          style: TextStyle(
                              color: Colors.grey.shade500,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        height: 220,
                        width: 180,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage('images/entertainment.jpg'),
                          fit: BoxFit.cover,
                        )),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Material(
                    elevation: 10,
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, 'MyFeedScreen');
                      },
                      child: Container(
                        alignment: AlignmentDirectional.bottomCenter,
                        child: Text(
                          "Education",
                          style: TextStyle(
                              color: Colors.grey.shade500,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        height: 220,
                        width: 180,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage('images/Education.jpg'),
                          fit: BoxFit.cover,
                        )),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Material(
                    elevation: 10,
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, 'MyFeedScreen');
                      },
                      child: Container(
                        alignment: AlignmentDirectional.bottomCenter,
                        child: Text(
                          "Entertainment News",
                          style: TextStyle(
                              color: Colors.grey.shade500,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        height: 220,
                        width: 180,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage('images/entertainment.jpg'),
                          fit: BoxFit.cover,
                        )),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Material(
                    elevation: 10,
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, 'MyFeedScreen');
                      },
                      child: Container(
                        alignment: AlignmentDirectional.bottomCenter,
                        child: Text(
                          "Corona News",
                          style: TextStyle(
                              color: Colors.grey.shade500,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        height: 220,
                        width: 180,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage('images/corona.jpg'),
                          fit: BoxFit.cover,
                        )),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Material(
                    elevation: 10,
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, 'MyFeedScreen');
                      },
                      child: Container(
                        alignment: AlignmentDirectional.bottomCenter,
                        child: Text(
                          "Automobile News",
                          style: TextStyle(
                              color: Colors.grey.shade500,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        height: 220,
                        width: 180,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage('images/automobile.jpg'),
                          fit: BoxFit.cover,
                        )),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
