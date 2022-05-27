import 'package:flutter/material.dart';
import 'package:myapp/utils/helper_widgets.dart';
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
            TextButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
              icon: Icon(Icons.home, color: Colors.lightGreen[300], size: 35.0),
              label:  modified_text(
                  text: 'Home Page', color: Colors.white, size: 35.0),
            ),
          Expanded(
            child: Container(
              constraints: const BoxConstraints.expand(),
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage('https://media.istockphoto.com/photos/self-care-word-on-wood-cubes-on-green-nature-background-picture-id1323129896?b=1&k=20&m=1323129896&s=170667a&w=0&h=_hR6fpap9B9mOhwIBsyPeMouYz9sZbw1-HDzt1ogdD4='),
                     fit: BoxFit.cover
                ),
            ),


            ),
          ),
        ],
      ),
    );
  }
}
