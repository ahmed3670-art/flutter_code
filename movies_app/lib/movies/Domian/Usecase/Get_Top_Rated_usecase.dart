import 'package:movies_app/core/Base_usecases/Base_usecases.dart';
import 'package:movies_app/core/Error/faluire.dart';
import 'package:dartz/dartz.dart';
import 'package:movies_app/movies/Domian/Entities/Movie.dart';
import 'package:movies_app/movies/Domian/Repository/base_movie_Repository.dart';

class GetTopRatedUsecase extends BaseUsecases<List<Movie>, Noparametr> {
  BaseMoiveRepository baseMoiveRepository;
  GetTopRatedUsecase(this.baseMoiveRepository);
  @override
  Future<Either<failure, List<Movie>>> call(Noparametr noparametr) async {
    return await baseMoiveRepository.GetTopRatedMovies();
  }
}
