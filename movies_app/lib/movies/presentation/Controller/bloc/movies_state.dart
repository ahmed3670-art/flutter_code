import 'package:equatable/equatable.dart';
import 'package:movies_app/core/utiles/enums.dart';
import 'package:movies_app/movies/Domian/Entities/Movie.dart';

class MovieState extends Equatable {
  final List<Movie> nowPlayingMoives;
  final requestState nowplayingState;
  final String NowPlayingMassage;
  final List<Movie> MostPopularMovies;
  final requestState MostPopularState;
  final String MostPopularMassage;
  final List<Movie> TopRatedMoives;
  final requestState TopRatedState;
  final String TopRatedMassage;

  MovieState(
      {this.nowPlayingMoives = const [],
      this.NowPlayingMassage = '',
      this.nowplayingState = requestState.loading,
      this.MostPopularMovies = const [],
      this.MostPopularMassage = '',
      this.MostPopularState = requestState.loading,
      this.TopRatedMoives = const [],
      this.TopRatedMassage = '',
      this.TopRatedState = requestState.loading});

  MovieState CopyWith({
    List<Movie>? nowPlayingMoives,
    requestState? nowplayingState,
    String? NowPlayingMassage,
    List<Movie>? MostPopularMovies,
    requestState? MostPopularState,
    String? MostPopularMassage,
    List<Movie>? TopRatedMoives,
    requestState? TopRatedState,
    String? TopRatedMassage,
  }) {
    return MovieState(
        nowPlayingMoives: nowPlayingMoives ?? this.nowPlayingMoives,
        nowplayingState: nowplayingState ?? this.nowplayingState,
        NowPlayingMassage: NowPlayingMassage ?? this.NowPlayingMassage,
        MostPopularMovies: MostPopularMovies ?? this.MostPopularMovies,
        MostPopularMassage: MostPopularMassage ?? this.MostPopularMassage,
        MostPopularState: MostPopularState ?? this.MostPopularState,
        TopRatedMoives: TopRatedMoives ?? this.TopRatedMoives,
        TopRatedMassage: TopRatedMassage ?? this.TopRatedMassage,
        TopRatedState: TopRatedState ?? this.TopRatedState);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [
        nowPlayingMoives,
        nowplayingState,
        NowPlayingMassage,
        MostPopularMassage,
        MostPopularMovies,
        MostPopularState,
        TopRatedMassage,
        TopRatedMoives,
        TopRatedState
      ];
}
