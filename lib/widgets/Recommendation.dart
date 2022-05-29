import 'package:flutter/material.dart';
import 'package:myapp/utils/helper_widgets.dart';
import 'package:myapp/utils/text.dart';
import 'package:myapp/widgets/fetch.dart';
import 'package:myapp/widgets/globals.dart';
import 'package:google_fonts/google_fonts.dart';

class Recommendations extends StatefulWidget {
  Recommendations({Key? key}) : super(key: key);
  @override
  State<Recommendations> createState() => _RecommendationsState();
}

class _RecommendationsState extends State<Recommendations> {
  late Future<List<Movie>> recmovies;
  List<String> favmovies = Globals.getMyFavMovies();
  @override
  void initState() {
    recmovies = loadmovies();
    super.initState();
  }

  Future<List<Movie>> loadmovies() async {
    List<Movie> list = [];
    for (var i in favmovies) {
      list.addAll(await fetchMovies(i));
    }
    list.sort((a, b) => b.Match_Score.compareTo(a.Match_Score)); //sorting the recommendations with the highest match score
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.red[800],
        title: const modified_text(
            text: 'You Might Also Want To Watch',
            size: 20.0,
            color: Colors.white),
        centerTitle: true,
      ),
      body: FutureBuilder<List<Movie>>(
        future: recmovies,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (_, index) => Container(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  padding: EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[850],
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      modified_text(
                          text: "${snapshot.data![index].Name.toUpperCase()}",
                          color: Colors.white,
                          size: 18.0),
                      addVerticalSpace(5),
                      modified_text(
                          text: "Genres : ${snapshot.data![index].Genres}",
                          color: Colors.white70,
                          size: 15.0),
                      addVerticalSpace(5),
                  modified_text(
                      text: "${snapshot.data![index].Match_Score}%match",
                      color: Colors.green,
                      size: 15.0),
                    ],
                  ),
                ),
              ),
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
