import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movies_app/core/Base_usecases/Base_usecases.dart';
import 'package:movies_app/core/Error/faluire.dart';
import 'package:movies_app/movies/Domian/Entities/recomendition_movies.dart';
import 'package:movies_app/movies/Domian/Repository/base_movie_Repository.dart';

class GetRecomendationMoviesusecase
    extends BaseUsecases<List<RecomendationMovies>, RecomendationParametr> {
  final BaseMoiveRepository baseMoiveRepository;
  GetRecomendationMoviesusecase(this.baseMoiveRepository);
  @override
  Future<Either<failure, List<RecomendationMovies>>> call(
      RecomendationParametr parametr) async {
    return await baseMoiveRepository.GetRecomendationMovies(parametr);
  }
}

class RecomendationParametr extends Equatable {
  final int id;
  const RecomendationParametr({required this.id});

  @override
  // TODO: implement props
  List<Object?> get props => [id];
}
