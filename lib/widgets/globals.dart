import 'package:flutter/material.dart';
class Globals extends ChangeNotifier{
  static List<String> favmovies = [];

  static void addData(String data){
    favmovies.add(data);
  }

  static List<String> getMyObjectsList(){
    return favmovies;
  }


}
