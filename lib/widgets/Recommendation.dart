import 'package:flutter/material.dart';
import '../utils/helper_widgets.dart';
import '../utils/text.dart';
import 'package:myapp/widgets/fetch.dart';


class Recommendations extends StatefulWidget {
  late Future<List<Movie>> favmovies;
  Recommendations({Key? key, required this.favmovies}) : super(key: key);
  @override
  State<Recommendations> createState() => _RecommendationsState();
}

class _RecommendationsState extends State<Recommendations> {
  get favmovies => widget.favmovies;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const modified_text(
            text: 'Movies Recommendation', size: 15.0, color: Colors.white),
        centerTitle: true,
      ),
      body: Container(
        height: 270,
        child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return InkWell(
              child: Column(
                children: [
                  Container(
                    width: 140,
                    child: modified_text(
                        text: (favmovies), size: 15.0, color: Colors.white),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

// var data = await getData(uri.parse('https://bioscope-api.herokuapp.com/movie?title=$name'));
// var decodedData = jsonDecode(data);
// print(decodedData['query']);
