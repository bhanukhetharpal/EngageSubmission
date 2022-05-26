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
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        title: const Text('Skin Care Recommendation'),
        centerTitle: true,
        backgroundColor: Colors.lightGreen[400],
      ),
    );
  }
}
