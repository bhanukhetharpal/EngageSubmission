import 'package:flutter/material.dart';
import 'package:myapp/widgets/globals.dart';
import '../utils/helper_widgets.dart';
import '../utils/text.dart';
import 'package:myapp/widgets/fetch.dart';

class Recommendations extends StatefulWidget {
  List<Movie> recmovies = [];
  final List favmovies;
  Recommendations({Key? key, required this.favmovies}) : super(key: key);
  @override
  State<Recommendations> createState() => _RecommendationsState();
}

class _RecommendationsState extends State<Recommendations> {
  get recmovies =>
      recmovies.map<Movie>((i) => fetchMovies(widget.favmovies[i])).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,



    );
  }
}
