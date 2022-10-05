import 'dart:convert';
import 'dart:math';

import 'package:movies_app/movies/Domian/Entities/Movie.dart';

class MoviesModle extends Movie {
  MoviesModle(
      {required super.id,
      required super.title,
      required super.backdropPath,
      required super.genreIds,
      required super.overview,
      required super.voteAaverage,
      required super.releaseDate});

  factory MoviesModle.fromJason(Map<String, dynamic> jason) {
    return MoviesModle(
      id: jason["id"],
      title: jason["title"],
      backdropPath: jason["backdrop_path"],
      genreIds: List.from(jason["genre_ids"].map((e) => e)),
      overview: jason["overview"],

      /// TODO : CHECK THIS
      voteAaverage: jason["vote_average"].toDouble(),
      releaseDate: jason["release_date"],
    );
  }
}
