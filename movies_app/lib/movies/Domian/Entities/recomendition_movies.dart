import 'package:equatable/equatable.dart';

class RecomendationMovies extends Equatable {
  final String? backdropPath;
  final int id;
  const RecomendationMovies({this.backdropPath, required this.id});

  @override
  // TODO: implement props
  List<Object?> get props => [id, backdropPath];
}
