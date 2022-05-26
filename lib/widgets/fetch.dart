import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Movie {
  final String movieId;
  final String Name;
  final List Genres;

  const Movie({
    required this.movieId,
    required this.Name,
    required this.Genres,
  });
  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      movieId: json['Movie_Id'] as String,
      Name: json['Name'] as String,
      Genres: json['Genres'] as List,
    );
  }
}

Future<List<Movie>> fetchMovies(String movie_title) async {
  final response = await http.get(
      Uri.parse('https://bioscope-api.herokuapp.com/movie?title=$movie_title'));
  print(response.body);
  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    String  jsonDataString = response.body.toString();
    var data = json.decode(jsonDataString);
    var rest = data[0] as List;
    print(rest);
    List<Movie> favmovies = [];
    favmovies = rest.map<Movie>((json)=> Movie.fromJson(json)).toList();
   return favmovies;
  }
  else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Movie not in database');
  }
}
