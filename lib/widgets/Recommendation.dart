import 'package:flutter/material.dart';
import 'package:myapp/utils/helper_widgets.dart';
import 'package:myapp/widgets/fetch.dart';
import 'package:myapp/widgets/globals.dart';

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
  Future<List<Movie>> loadmovies() async{
    List<Movie> list = [];
    for(var i in favmovies){
    list.addAll(await fetchMovies(i));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
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
                color: Colors.lightGreen[200],
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              Text(
              "${snapshot.data![index].Name}",
                style: TextStyle(
                  fontFamily: 'Koulen',
                  fontSize: 18.0,
                ),
              ),
                addVerticalSpace(10),
                  Text("${snapshot.data![index].Genres}"),
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

