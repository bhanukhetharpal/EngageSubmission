import 'package:flutter/material.dart';
import 'package:myapp/utils/text.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: modified_text(
            text: 'Self Care App', color: Colors.white, size: 25.0),
        centerTitle: true,
        backgroundColor: Colors.lightGreen[300],
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: TextButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
              icon: Icon(Icons.home, color: Colors.lightGreen[300], size: 35.0),
              label:  modified_text(
                  text: 'Home Page', color: Colors.white, size: 35.0),
            ),
          ),
          Image.asset('Assets/Self_caretheme.jpg', fit: BoxFit.fill),
        ],
      ),
    );
  }
}
