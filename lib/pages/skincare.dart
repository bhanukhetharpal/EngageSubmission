import 'package:flutter/material.dart';
class Skincare extends StatefulWidget {
  const Skincare({Key? key}) : super(key: key);

  @override
  State<Skincare> createState() => _SkincareState();
}

class _SkincareState extends State<Skincare> {
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
