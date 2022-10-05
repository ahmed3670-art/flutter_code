import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/core/Base_usecases/Base_usecases.dart';
import 'package:movies_app/core/utiles/enums.dart';
import 'package:movies_app/movies/Domian/Usecase/Get_Most_Pobular_usecase.dart';
import 'package:movies_app/movies/Domian/Usecase/Get_Top_Rated_usecase.dart';
import 'package:movies_app/movies/Domian/Usecase/Get_now_playing_Movies_usecase.dart';
import 'package:movies_app/movies/presentation/Controller/bloc/movies_event.dart';
import 'package:movies_app/movies/presentation/Controller/bloc/movies_state.dart';

class MovieBloc extends Bloc<MoviesEvent, MovieState> {
  final GetnowplayingMoviesUsecase getnowplayingMoviesUsecase;
  final GetMostPobularUsecase getMostPobularUsecase;
  final GetTopRatedUsecase getTopRatedUsecase;

  MovieBloc(this.getnowplayingMoviesUsecase, this.getMostPobularUsecase,
      this.getTopRatedUsecase)
      : super(MovieState()) {
    on<GetnowplayingMoviesEvents>((event, emit) async {
      final result = await getnowplayingMoviesUsecase(const Noparametr());

      result.fold(
          (l) => emit(state.CopyWith(
              nowplayingState: requestState.error,
              NowPlayingMassage: l.message)),
          (r) => emit(state.CopyWith(
              nowplayingState: requestState.loaded, nowPlayingMoives: r)));
    });
    on<GetMostPobularEvents>((event, emit) async {
      final result = await getMostPobularUsecase(const Noparametr());

      result.fold(
          (l) => emit(state.CopyWith(
              MostPopularState: requestState.error,
              MostPopularMassage: l.message)),
          (r) => emit(state.CopyWith(
              MostPopularState: requestState.loaded, MostPopularMovies: r)));
    });
    on<GetTopRatedEvents>((event, emit) async {
      final result = await getTopRatedUsecase(const Noparametr());

      result.fold(
          (l) => emit(state.CopyWith(
              TopRatedState: requestState.error, TopRatedMassage: l.message)),
          (r) => emit(state.CopyWith(
              TopRatedState: requestState.loaded, TopRatedMoives: r)));
    });
  }
}
