import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/services.dart' as rootBundle;

class Movie {
  final String movieId;
  final String Name;
  final String Genres;

  const Movie({
    required this.movieId,
    required this.Name,
    required this.Genres,
  });
  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      movieId: json['Movie_Id'] as String,
      Name: json['Name'] as String,
      Genres: json['Genres'] as String,
    );
  }
}

Future<List<Movie>> fetchMovies(String movie_title) async {
  final response = await http.get(
      Uri.parse('https://bioscope-api.herokuapp.com/movie?title=$movie_title'));
  print(response.body is String);
  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    final list = json.decode(response.body) as List<dynamic>;
    print(list);
    List<Movie> recmovies = [];
    recmovies = list.map<Movie>((json)=> Movie.fromJson(json)).toList();
    print(recmovies[0].Name);
   return recmovies;
  }
  else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Movie not in database');
  }
}
