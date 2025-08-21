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
      title: json['title'] ?? json['Title'] ?? '',
      year: json['year'] ?? json['Year'] ?? '',
      rated: json['rated'] ?? json['Rated'] ?? '',
      released: json['released'] ?? json['Released'] ?? '',
      runtime: json['runtime'] ?? json['Runtime'] ?? '',
      genre: json['genre'] ?? json['Genre'] ?? '',
      director: json['director'] ?? json['Director'] ?? '',
    );
  }

  /// Convert Movie to JSON (always lowercase keys for consistency)
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
