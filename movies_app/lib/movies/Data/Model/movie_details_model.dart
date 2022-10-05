import 'package:movies_app/movies/Data/Model/genars_model.dart';
import 'package:movies_app/movies/Domian/Entities/Movie_Detailes.dart';

class MovieDetailsModel extends MovieDetaiels {
  MovieDetailsModel(
      {required super.genars,
      required super.title,
      required super.voteAverage,
      required super.id,
      required super.backdropPath,
      required super.releaseDate,
      required super.overview,
      required super.runtime});

  factory MovieDetailsModel.fromJason(Map<String, dynamic> jason) {
    return MovieDetailsModel(
      title: jason['title'],
      voteAverage: jason['vote_average'].toDouble(),
      releaseDate: jason['release_date'],
      id: jason['id'],
      backdropPath:
          jason["backdrop_path"] ?? "/8SXjxL4nVxLQouaNkazQAklDX4h.jpg",
      overview: jason['overview'],
      runtime: jason["runtime"],
      genars: List<GenarsModel>.from(
          jason['genres'].map((e) => GenarsModel.fromJason(e))),
    );
  }
}
