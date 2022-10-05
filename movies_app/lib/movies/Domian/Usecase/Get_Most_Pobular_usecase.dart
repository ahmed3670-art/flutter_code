import 'package:movies_app/core/Base_usecases/Base_usecases.dart';
import 'package:movies_app/core/Error/faluire.dart';
import 'package:dartz/dartz.dart';
import 'package:movies_app/movies/Domian/Entities/Movie.dart';
import 'package:movies_app/movies/Domian/Repository/base_movie_Repository.dart';

class GetMostPobularUsecase extends BaseUsecases<List<Movie>, Noparametr> {
  final BaseMoiveRepository baseMoiveRepository;

  GetMostPobularUsecase(this.baseMoiveRepository);

  @override
  Future<Either<failure, List<Movie>>> call(Noparametr noparametr) async {
    return await baseMoiveRepository.GetMostPopularMovies();
  }
}
