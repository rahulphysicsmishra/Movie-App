class Movie {
  final String title;
  final String year;
  final String rated;
  final String released;
  final String runtime;
  final String genre;
  final String director;

  Movie({
    required this.title,
    required this.year,
    required this.rated,
    required this.released,
    required this.runtime,
    required this.genre,
    required this.director,
  });

  /// Factory constructor to create a Movie from JSON
  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      title: json['title'] ?? '',
      year: json['year'] ?? '',
      rated: json['rated'] ?? '',
      released: json['released'] ?? '',
      runtime: json['runtime'] ?? '',
      genre: json['genre'] ?? '',
      director: json['director'] ?? '',
    );
  }

  /// Convert Movie to JSON
  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'year': year,
      'rated': rated,
      'released': released,
      'runtime': runtime,
      'genre': genre,
      'director': director,
    };
  }
}
