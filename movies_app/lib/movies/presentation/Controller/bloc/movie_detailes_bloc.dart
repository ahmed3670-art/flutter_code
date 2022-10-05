import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/core/utiles/enums.dart';
import 'package:movies_app/movies/Domian/Entities/Movie_Detailes.dart';
import 'package:movies_app/movies/Domian/Entities/recomendition_movies.dart';
import 'package:movies_app/movies/Domian/Usecase/Get_moviedetailes_usecase.dart';
import 'package:movies_app/movies/Domian/Usecase/Get_recomendation_movies_uescase.dart';

part 'movie_detailes_event.dart';
part 'movie_detailes_state.dart';

class MovieDetailesBloc extends Bloc<MovieDetailesEvent, MovieDetailesState> {
  final GetMoiveDetielsusecase getMoiveDetielsusecase;
  final GetRecomendationMoviesusecase getRecomendationMoviesusecase;
  MovieDetailesBloc(
      this.getRecomendationMoviesusecase, this.getMoiveDetielsusecase)
      : super(MovieDetailesState()) {
    on<GetmoviedetailesEvent>((event, emit) async {
      final result =
          await getMoiveDetielsusecase(MovieDetielsParameter(id: event.id));
      print("$result bloc errorrrrrrrrrrrrrrrrrrr!!!!!");
      result.fold(
          (l) => emit(state.copywith(
              moviedetaielsMassage: l.message,
              moviedetalesState: requestState.error)),
          (r) => emit(state.copywith(
              movieDetaiels: r, moviedetalesState: requestState.loaded)));
    });
    on<GetMoiverecomendetionEvent>((event, emit) async {
      final result = await getRecomendationMoviesusecase(
        RecomendationParametr(id: event.id),
      );
      print("$result recooooooooooooooo bloc errorrrrrrrrrrrrrrrrrrr!!!!!");

      result.fold(
          (l) => emit(state.copywith(
              recomendationMoviesMassage: l.message,
              recomendationMoviesState: requestState.error)),
          (r) => emit(state.copywith(
              recomendationMovies: r,
              recomendationMoviesState: requestState.loaded)));
    });
  }
}
