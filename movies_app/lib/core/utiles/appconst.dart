import 'dart:convert';

import 'package:movies_app/movies/Domian/Entities/Movie_Detailes.dart';
import 'package:movies_app/movies/Domian/Usecase/Get_moviedetailes_usecase.dart';

class ApiConstance {
  static const BaseUlr = "https://api.themoviedb.org/3";
  static const nowplaying = "$BaseUlr/movie/now_playing?api_key=$api_key";
  static const api_key = "07ffefe585b2998e5488d37efe907f01";
  static const MostPopular = "$BaseUlr/movie/popular?api_key=$api_key";
  static const TopRated = "$BaseUlr/movie/top_rated?api_key=$api_key";
  static const baseImageUrl = "https://image.tmdb.org/t/p/w500";
  static String imageUrl(String path) => "$baseImageUrl$path";
  static String MovieDetaiels(int movieid) =>
      "$BaseUlr/movie/$movieid?api_key=$api_key";

  static String RecomandationMovies(int movieid) =>
      "$BaseUlr/movie/$movieid/recommendations?api_key=$api_key";
}
