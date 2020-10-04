import 'dart:convert';

import 'package:http/http.dart' as http;

class NetworkHelper {
  static const api_key = 'e076c83c6f1848768bb98d0bc2d0db9c';
  static const url = 'http://newsapi.org/v2/top-headlines';
  String newsUrl = '$url?country=in&apiKey=$api_key';
  Future<dynamic> getNews() async {
    http.Response res = await http.get(newsUrl);
    if (res.statusCode == 200) {
      print(res.body);
      var data = res.body;
      return jsonDecode(data);
    } else {
      print(res.statusCode);
    }
  }
}
