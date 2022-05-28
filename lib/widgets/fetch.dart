import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

class Movie {
  final String movieId;
  final String Name;
  final String Genres;
  final String Match_Score;

  const Movie({
    required this.movieId,
    required this.Name,
    required this.Genres,
    required this.Match_Score,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      Genres: json['Genres'] as String,
      Match_Score: json['Match_Score'] as String,
      movieId: json['Movie_Id'] as String,
      Name: json['Name'] as String,

    );
  }
}
  Future<List<Movie>> fetchMovies(String movie_title) async {
    final response = await http.get(Uri.parse(
        'https://bhanukhetharpal.pythonanywhere.com/movie?title=$movie_title'));
    print(response.body);
    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      print('I am here');
      final list = jsonDecode(response.body) as List<dynamic>;
      print(list);
      List<Movie> recmovies = [];
      recmovies = list.map<Movie>((json) => Movie.fromJson(json)).toList();
      print('fetching recommendations');
      return recmovies;
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Movie not in database');
    }
  }

