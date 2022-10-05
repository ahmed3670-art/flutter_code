import 'package:dartz/dartz.dart';
import 'package:movies_app/core/Error/Exciptions.dart';
import 'package:movies_app/core/Error/faluire.dart';
import 'package:movies_app/movies/Data/Data_Source/Movies_Remote_data_source.dart';
import 'package:movies_app/movies/Domian/Entities/Movie.dart';
import 'package:movies_app/movies/Domian/Entities/Movie_Detailes.dart';
import 'package:movies_app/movies/Domian/Entities/recomendition_movies.dart';
import 'package:movies_app/movies/Domian/Repository/base_movie_Repository.dart';
import 'package:movies_app/movies/Domian/Usecase/Get_moviedetailes_usecase.dart';
import 'package:movies_app/movies/Domian/Usecase/Get_recomendation_movies_uescase.dart';

class MoviesRepository extends BaseMoiveRepository {
  BaseMoviesRemoteDataSource baseMoviesRemoteDataSource;
  MoviesRepository(this.baseMoviesRemoteDataSource);
  @override
  Future<Either<failure, List<Movie>>> GetMostPopularMovies() async {
    final result = await baseMoviesRemoteDataSource.GetMostPobular();
    try {
      return right(result);
    } on ServerException catch (e) {
      return left(serverfailur(e.errorMassageModel.statusMessage));
    }
  }

  @override
  Future<Either<failure, List<Movie>>> GetNowPlayingMovies() async {
    final result = await baseMoviesRemoteDataSource.getnowplaying();
    try {
      return right(result);
    } on ServerException catch (e) {
      return left(serverfailur(e.errorMassageModel.statusMessage));
    }
  }

  @override
  Future<Either<failure, List<Movie>>> GetTopRatedMovies() async {
    final result = await baseMoviesRemoteDataSource.GetTopRated();
    try {
      return right(result);
    } on ServerException catch (e) {
      return left(serverfailur(e.errorMassageModel.statusMessage));
    }
  }

  @override
  Future<Either<failure, MovieDetaiels>> GetMoivedetiels(
      MovieDetielsParameter parameter) async {
    print("test333333333333333333333333333333333333333333333333333");
    final result = await baseMoviesRemoteDataSource.Getmoviedetials(parameter);
    print("test4444444444444444444444444444444444");

    try {
      return right(result);
    } on ServerException catch (e) {
      return left(serverfailur(e.errorMassageModel.statusMessage));
    }
  }

  @override
  Future<Either<failure, List<RecomendationMovies>>> GetRecomendationMovies(
      RecomendationParametr parameter) async {
    final result =
        await baseMoviesRemoteDataSource.GetRecomendationMovies(parameter);
    try {
      return right(result);
    } on ServerException catch (e) {
      return left(serverfailur(e.errorMassageModel.statusMessage));
    }
  }
}
