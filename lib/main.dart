import 'package:flutter/material.dart';
import 'package:myapp/pages/movies.dart';
import 'package:myapp/pages/books.dart';
import 'package:myapp/pages/skincare.dart';
import 'package:myapp/pages/loading.dart';
import 'package:myapp/pages/home.dart';
import 'package:myapp/theme/theme_constants.dart';
import 'package:myapp/theme/theme_manager.dart';
import 'package:myapp/widgets/Recommendation.dart';


ThemeManager _themeManager = ThemeManager();
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
  void dispose() {
    _themeManager.removeListener(themeListener);
    super.dispose();
  }

  @override
  void initState() {
    _themeManager.addListener(themeListener);
    super.initState();
  }

  themeListener() {
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recommendation Engine',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: _themeManager.themeMode,
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
