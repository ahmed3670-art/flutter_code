import 'package:dio/dio.dart';
import 'package:movies_app/core/Error/Exciptions.dart';
import 'package:movies_app/core/Network/Error_Massage_Model.dart';
import 'package:movies_app/core/utiles/appconst.dart';
import 'package:movies_app/movies/Data/Model/Movies_Model.dart';
import 'package:movies_app/movies/Data/Model/movie_details_model.dart';
import 'package:movies_app/movies/Data/Model/recomendation_model.dart';
import 'package:movies_app/movies/Domian/Usecase/Get_moviedetailes_usecase.dart';
import 'package:movies_app/movies/Domian/Usecase/Get_recomendation_movies_uescase.dart';

abstract class BaseMoviesRemoteDataSource {
  Future<List<MoviesModle>> getnowplaying();
  Future<List<MoviesModle>> GetMostPobular();
  Future<List<MoviesModle>> GetTopRated();
  Future<MovieDetailsModel> Getmoviedetials(MovieDetielsParameter parameter);
  Future<List<RecomandationModel>> GetRecomendationMovies(
      RecomendationParametr parametr);
}

class MoviesRemoteDataSource extends BaseMoviesRemoteDataSource {
  @override
  Future<List<MoviesModle>> getnowplaying() async {
    final response = await Dio().get(ApiConstance.nowplaying);
    if (response.statusCode == 200) {
      return List<MoviesModle>.from((response.data["results"] as List).map(
        (e) => MoviesModle.fromJason(e),
      ));
    } else {
      throw ServerException(
          errorMassageModel: ErrorMassageModel.fromjason(response.data));
    }
  }

  @override
  Future<List<MoviesModle>> GetMostPobular() async {
    final response = await Dio().get(ApiConstance.MostPopular);
    if (response.statusCode == 200) {
      return List<MoviesModle>.from((response.data["results"] as List).map(
        (e) => MoviesModle.fromJason(e),
      ));
    } else {
      throw ServerException(
          errorMassageModel: ErrorMassageModel.fromjason(response.data));
    }
  }

  @override
  Future<List<MoviesModle>> GetTopRated() async {
    final response = await Dio().get(ApiConstance.TopRated);
    if (response.statusCode == 200) {
      return List<MoviesModle>.from((response.data["results"] as List).map(
        (e) => MoviesModle.fromJason(e),
      ));
    } else {
      throw ServerException(
          errorMassageModel: ErrorMassageModel.fromjason(response.data));
    }
  }

  Future<MovieDetailsModel> Getmoviedetials(
      MovieDetielsParameter parameter) async {
    final response = await Dio().get(ApiConstance.MovieDetaiels(parameter.id));
    if (response.statusCode == 200) {
      return MovieDetailsModel.fromJason(response.data);
    } else {
      throw ServerException(
          errorMassageModel: ErrorMassageModel.fromjason(response.data));
    }
  }

  @override
  Future<List<RecomandationModel>> GetRecomendationMovies(
      RecomendationParametr parametr) async {
    final response =
        await Dio().get(ApiConstance.RecomandationMovies(parametr.id));
    if (response.statusCode == 200) {
      return List<RecomandationModel>.from(
          (response.data["results"] as List).map(
        (e) => RecomandationModel.fromJason(e),
      ));
    } else {
      throw ServerException(
          errorMassageModel: ErrorMassageModel.fromjason(response.data));
    }
  }
}
