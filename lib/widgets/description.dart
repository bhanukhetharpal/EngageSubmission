import 'package:flutter/material.dart';
import 'package:myapp/utils/text.dart';
import 'package:myapp/utils/helper_widgets.dart';
import 'package:myapp/widgets/globals.dart';

class Description extends StatelessWidget {
  final String name, description, bannerurl, posterurl, vote, launch_on;
  final int movieid;
  //final List genres;
  const Description(
      {Key? key,
      required this.name,
      required this.description,
      required this.bannerurl,
      required this.posterurl,
      required this.vote,
      required this.launch_on,
      required this.movieid,
      //  required this.genres
      })
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: ListView(children: [
          Container(
            height: 250,
            child: Stack(
              children: [
                Positioned(
                    child: Container(
                  height: 250,
                  width: MediaQuery.of(context).size.width,
                  child: Image.network(
                    bannerurl,
                    fit: BoxFit.cover,
                  ),
                )),
                Positioned(
                    bottom: 10,
                    child: modified_text(
                        text: '⭐ Average Rating -'+ vote,
                        size: 18.0,
                        color: Colors.white))
              ],
            ),
          ),
          addVerticalSpace(15.0),
          Container(
            padding: EdgeInsets.all(10),
            child: modified_text(
                text: name != null ? name : 'Not Loaded',
                size: 24,
                color: Colors.white),
          ),
          Container(
            padding: EdgeInsets.only(left: 10),
            child: modified_text(
                text: 'Released On- ' + launch_on,
                size: 14,
                color: Colors.white),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.all(5),
                height: 200,
                width: 100,
                child: Image.network(posterurl),
              ),
            Flexible(
              child: Container(
                child: modified_text(text: description, size: 18,color: Colors.white),
              ),
            ),
              addVerticalSpace(5),
              // Container(
              //   child: printgenres(genres,movieid),
              // ),
            ],
          ),

          ElevatedButton.icon(onPressed: (){
            Globals.addData(name);
            print(Globals.getMyObjectsList());
           },
            icon: const Icon(Icons.favorite, color: Colors.red,size: 24.0),
            label: const Text(''),
          ),


        ]),
      ),
    );
  }




//   printgenres(List genres, String movieid) {
//     //modified_text(text: 'Genres: ', size:16, color: Colors.green);
//     for(int i = 0; i<3; i++){
//       print(genres[movieid]['name']);
//       //modified_text(text: ans , size:16, color: Colors.green);
//     }
//   }
 }


