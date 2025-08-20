import 'package:flutter/material.dart';

class MovieProvider extends ChangeNotifier {
  final List<String> _moviesList =  [
    "Inception",
    "Interstellar",
    "The Dark Knight",
    "Pulp Fiction",
    "The Shawshank Redemption"
  ];

  List<String> get moviesList => _moviesList;

  List<String> loadMovies() {
    // Simulate a network call or database query
    return _moviesList;
  }
}