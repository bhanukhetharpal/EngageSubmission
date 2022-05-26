import 'package:flutter/material.dart';
import 'package:myapp/utils/helper_widgets.dart';
import 'package:myapp/utils/text.dart';
import 'package:myapp/widgets/description.dart';

class TV extends StatelessWidget {
  final List tv;
  //final List genres;
  const TV({Key? key, required this.tv}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          modified_text(
              text: 'Popular TV Shows', color: Colors.white, size: 26),
          addVerticalSpace(10),
          Container(
            height: 270,
            child: ListView.builder(
                itemCount: tv.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Description(
                                  name: tv[index]['original_name'],
                                  description: tv[index]['overview'],
                                  bannerurl: 'https://image.tmdb.org/t/p/w500' +
                                      tv[index]['backdrop_path'],
                                  posterurl: 'https://image.tmdb.org/t/p/w500' +
                                      tv[index]['poster_path'],
                                  vote: tv[index]['vote_average'].toString(),
                                  launch_on: tv[index]['first_air_date'],
                                  movieid: tv[index]['id'],
                                  )));
                    },
                    child: tv[index]['original_name'] != null
                        ? Container(
                            padding: EdgeInsets.all(5),
                            width: 250,
                            child: Column(
                              children: [
                                Container(
                                  width: 250,
                                  height: 140,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                        image: NetworkImage(
                                            'https://image.tmdb.org/t/p/w500' +
                                                tv[index]['backdrop_path']),
                                        fit: BoxFit.cover,
                                      )),
                                ),
                                addVerticalSpace(10),
                                Container(
                                  child: modified_text(
                                      text: (tv[index]['original_name'] != null
                                          ? tv[index]['original_name']
                                          : 'Loading'),
                                      size: 15.0,
                                      color: Colors.white),
                                )
                              ],
                            ),
                          )
                        : Container(),
                  );
                }),
          )
        ],
      ),
    );
  }
}
