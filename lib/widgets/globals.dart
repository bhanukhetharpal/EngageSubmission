import 'package:flutter/material.dart';
class Globals extends ChangeNotifier{
  static List<String> favmovies = [] ;

  static void addData(String data) {
      favmovies.add(data);

  }

   static List<String> getMyFavMovies(){
    if(favmovies.length==0){
      List<String> ans = ['a','Like a Movie'];
      return ans;
    }
    return favmovies;
  }


}
