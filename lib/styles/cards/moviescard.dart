import 'package:flutter/material.dart';
class moviescard extends StatelessWidget {
  const moviescard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8.0,
      color: Colors.lightGreen[200],
      child: Column(
        children: <Widget> [
          Image.asset('Assets/Streamingservices.jpeg',
              height: 130.0, width:1000, fit: BoxFit.fitWidth),
          TextButton.icon(
            onPressed: () {
              Navigator.pushNamed(context, '/movies');
            },
            icon: Icon(
              Icons.movie,
              color: Colors.black87,
            ),
            label: Text(
              'Recommend Me Movies',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'IndieFlower',
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
