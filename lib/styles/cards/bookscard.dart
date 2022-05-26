import 'package:flutter/material.dart';
class bookscard extends StatelessWidget {
  const bookscard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8.0,
      color: Colors.green[50],
      child: Column(
        children: <Widget>[
          Image.asset('Assets/books.jpg',
              height: 130.0, width:1000, fit: BoxFit.fitWidth),
          TextButton.icon(
            onPressed: () {
              Navigator.pushNamed(context, '/books');
            },
            icon: Icon(Icons.book, color: Colors.black87),
            label: Text(
              'Recommend Me Books',
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
