import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Services/NetworkHelper.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class MyFeed extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<MyFeed> {
  List data;
  @override
  void initState() {
    super.initState();
    getNewsData();
  }

  getNewsData() async {
    var jsonData = await NetworkHelper().getNews();

    setState(() {
      data = jsonData['articles'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("NewsFeed"),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.blueAccent,
            ),
            onPressed: () {
              getNewsData();
            },
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.refresh,
                color: Colors.blueAccent,
              ),
              onPressed: () {
                Navigator.pushNamed(context, 'MyFeedScreen');
              },
            )
          ],
        ),
        body: SafeArea(
          child: Swiper(
            itemBuilder: (BuildContext context, int index) {
              SwiperController controller = SwiperController();
              return Column(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 300,
                          child: Image(
                            image: NetworkImage(data[index]['urlToImage']),
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            data[index]['title'] ?? "unable to load data",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey.shade800),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                              data[index]['content'] ?? "unable to load data",
                              style: TextStyle(
                                  fontSize: 18, color: Colors.grey.shade800),
                              textAlign: TextAlign.center),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    elevation: 5,
                    child: InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          data[index + 1]['title'] ?? 'unable to load data',
                        ),
                      ),
                    ),
                    color: Colors.grey,
                  )
                ],
              );
            },
            // viewportFraction: 0.8,
            // scale: 0.9,

            itemCount: data == null ? 0 : 10,
            scrollDirection: Axis.vertical,
          ),
        ));
  }
}
