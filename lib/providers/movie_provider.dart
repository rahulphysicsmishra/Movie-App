import 'package:flutter/material.dart';
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/utils/movie_parser.dart';

class MovieProvider extends ChangeNotifier {
  List<Movie> _moviesList =  [
   
  ];

  List<Movie> get moviesList => _moviesList;

  Future<void> loadMovies(BuildContext context) async {
    try {
      final jsonString = await DefaultAssetBundle.of(context)
          .loadString('assets/data/films.json');
      print("Raw JSON: $jsonString");

      final movies = MovieParser.parse(jsonString);
      print("Parsed movies: ${movies.map((m) => m.title).toList()}");

      _moviesList = movies;
    } catch (e) {
      print('Error loading movies: $e');
    } finally {
      notifyListeners();
    }
  }
}