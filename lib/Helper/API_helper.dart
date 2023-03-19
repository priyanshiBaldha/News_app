import 'dart:convert';

import 'package:http/http.dart' as http;
import '../model/model.dart';

class NewsAPI{

  NewsAPI._();

  static final NewsAPI newsAPI = NewsAPI._();

  Future<List<NewsData>?> fetchNewsData({required String API}) async{

    http.Response res = await http.get(Uri.parse(API));

    if(res.statusCode ==200) {
      Map decodedData = jsonDecode(res.body);


      List news = decodedData['articles'];

      List<NewsData> newsData= news.map((e) => NewsData.fromMap(data: e)).toList();

      return newsData;
    }
  }
}