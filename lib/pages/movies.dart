import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:myapp/widgets/Recommendation.dart';
import 'package:myapp/widgets/toprated.dart';
import 'package:myapp/widgets/trending.dart';
import 'package:myapp/widgets/tv.dart';
import 'package:myapp/utils/text.dart';
import 'package:tmdb_api/tmdb_api.dart';
import 'package:myapp/widgets/globals.dart';

class Movies extends StatefulWidget {
  const Movies({Key? key}) : super(key: key);

  @override
  State<Movies> createState() => _MoviesState();
}

class _MoviesState extends State<Movies> {
  List trendingmovies = [];
  List topratedmovies = [];
  List tv = [];
  final String apikey = '22c55ca76a9630ee9c743c933b983d9f';
  final readaccesstoken =
      'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIyMmM1NWNhNzZhOTYzMGVlOWM3NDNjOTMzYjk4M2Q5ZiIsInN1YiI6IjYyOGUxZTE4MTQ5NTY1MDA2NjMxZmMzMyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.UGqasStjnEW0EqjXUK-iQignRf7D9yfmgvKjOgtXG2M';
  @override
  void initState() {
    loadmovies();
    super.initState();
  }

  loadmovies() async {
    TMDB tmdbWithCustomLogs = TMDB(
        logConfig: const ConfigLogger(showLogs: true, showErrorLogs: true),
        ApiKeys(apikey, readaccesstoken));
    Map trendingresult = await tmdbWithCustomLogs.v3.trending.getTrending();
    Map topratedresult = await tmdbWithCustomLogs.v3.movies.getTopRated();
    Map tvresult = await tmdbWithCustomLogs.v3.tv.getPopular();

    setState(() {
      trendingmovies = trendingresult['results'];
      topratedmovies = topratedresult['results'];
      tv = tvresult['results'];
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.red[800],
        title: const modified_text(
            text: 'Like Your Favourite Movies and TV Shows', size: 25.0, color: Colors.white),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          TopRated(toprated: topratedmovies),
          TrendingMovies(trending: trendingmovies),
          TV(tv: tv),
          ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, '/movies/recommendations');
              }, child: modified_text(size: 20, text: 'Recommend Me Movies', color: Colors.white),
              style:  ElevatedButton.styleFrom( primary: Colors.red[800]),
          ),
        ],
      ),
    );
  }
}

