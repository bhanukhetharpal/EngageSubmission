import 'package:flutter/material.dart';
class Books extends StatefulWidget {
  const Books({Key? key}) : super(key: key);

  @override
  State<Books> createState() => _BooksState();
}

class _BooksState extends State<Books> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[200],
      appBar: AppBar(
        title: const Text('Coming Soon'),
        centerTitle: true,
        backgroundColor: Colors.lightGreen[200],
      ),
    );
  }
}
