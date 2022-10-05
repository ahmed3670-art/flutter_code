import 'package:equatable/equatable.dart';
import 'package:movies_app/movies/Domian/Entities/genars.dart';

class MovieDetaiels extends Equatable {
  final String title;
  final double voteAverage;
  final int id;
  final String backdropPath;
  final String releaseDate;
  final String overview;
  final int runtime;
  final List<Genars> genars;

  const MovieDetaiels(
      {required this.genars,
      required this.title,
      required this.voteAverage,
      required this.id,
      required this.backdropPath,
      required this.releaseDate,
      required this.overview,
      required this.runtime});

  @override
  List<Object?> get props => [
        title,
        voteAverage,
        id,
        backdropPath,
        releaseDate,
        overview,
        runtime,
        genars
      ];
}
