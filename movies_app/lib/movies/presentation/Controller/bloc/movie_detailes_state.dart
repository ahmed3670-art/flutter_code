part of 'movie_detailes_bloc.dart';

class MovieDetailesState extends Equatable {
  final MovieDetaiels? movieDetaiels;
  final String moviedetaielsMassage;
  final requestState moviedetalesState;
  final List<RecomendationMovies> recomendationMovies;
  final String recomendationMoviesMassage;
  final requestState recomendationMoviesState;
  const MovieDetailesState(
      {this.movieDetaiels,
      this.moviedetaielsMassage = '',
      this.moviedetalesState = requestState.loading,
      this.recomendationMovies = const [],
      this.recomendationMoviesMassage = '',
      this.recomendationMoviesState = requestState.loading});

  MovieDetailesState copywith({
    MovieDetaiels? movieDetaiels,
    String? moviedetaielsMassage,
    requestState? moviedetalesState,
    List<RecomendationMovies>? recomendationMovies,
    String? recomendationMoviesMassage,
    requestState? recomendationMoviesState,
  }) {
    return MovieDetailesState(
        movieDetaiels: movieDetaiels ?? this.movieDetaiels,
        moviedetaielsMassage: moviedetaielsMassage ?? this.moviedetaielsMassage,
        moviedetalesState: moviedetalesState ?? this.moviedetalesState,
        recomendationMovies: recomendationMovies ?? this.recomendationMovies,
        recomendationMoviesMassage:
            recomendationMoviesMassage ?? this.recomendationMoviesMassage,
        recomendationMoviesState:
            recomendationMoviesState ?? this.recomendationMoviesState);
  }

  @override
  List<Object?> get props => [
        movieDetaiels,
        moviedetaielsMassage,
        moviedetalesState,
        recomendationMovies,
        recomendationMoviesMassage,
        recomendationMoviesState
      ];
}
