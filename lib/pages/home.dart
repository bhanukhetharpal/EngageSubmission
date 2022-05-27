import 'package:flutter/material.dart';
import 'package:myapp/styles/all.dart';
import 'package:myapp/utils/text.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: modified_text(
            text: 'Self Care App', color: Colors.white, size: 25.0),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Expanded(child: const bookscard()),
            Expanded(child: const moviescard()),
            Expanded(child: const skincarecard()),
          ],
        ),
      ),
    );
  }
}
