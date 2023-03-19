import 'package:flutter/material.dart';
import 'package:newsapp/views/screens/bookmark.dart';
import 'package:newsapp/views/screens/news_detail.dart';

import 'views/screens/home_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => homepage(),
        'detailPage': (context) => const newsDetailPage(),
        'bookmark': (context) => const bookmarkpage(),
      },
    );
  }
}
