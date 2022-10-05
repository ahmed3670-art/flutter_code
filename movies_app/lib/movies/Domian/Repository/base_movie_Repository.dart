import 'package:dartz/dartz.dart';
import 'package:movies_app/core/Error/faluire.dart';
import 'package:movies_app/movies/Domian/Entities/Movie.dart';
import 'package:movies_app/movies/Domian/Entities/Movie_Detailes.dart';
import 'package:movies_app/movies/Domian/Entities/recomendition_movies.dart';
import 'package:movies_app/movies/Domian/Usecase/Get_moviedetailes_usecase.dart';
import 'package:movies_app/movies/Domian/Usecase/Get_recomendation_movies_uescase.dart';

abstract class BaseMoiveRepository {
  Future<Either<failure, List<Movie>>> GetNowPlayingMovies();
  Future<Either<failure, List<Movie>>> GetMostPopularMovies();
  Future<Either<failure, List<Movie>>> GetTopRatedMovies();
  Future<Either<failure, MovieDetaiels>> GetMoivedetiels(
      MovieDetielsParameter parameter);
  Future<Either<failure, List<RecomendationMovies>>> GetRecomendationMovies(
      RecomendationParametr parameter);
}
