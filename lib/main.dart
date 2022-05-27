import 'package:flutter/material.dart';
import 'package:myapp/pages/movies.dart';
import 'package:myapp/pages/books.dart';
import 'package:myapp/pages/skincare.dart';
import 'package:myapp/pages/loading.dart';
import 'package:myapp/pages/home.dart';
import 'package:myapp/widgets/Recommendation.dart';


void main() {
  runApp(const MyApp());
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
      title: 'Recommendation Engine',
      home: const Loading(),
      initialRoute: '/',
      routes: {
        '/home': (context) => const Home(),
        '/movies': (context) => const Movies(),
        '/books': (context) => const Books(),
        '/skincare': (context) => const Skincare(),
    '/movies/recommendations': (context) => Recommendations(),
      },
    );
  }
}
