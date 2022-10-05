part of 'movie_detailes_bloc.dart';

abstract class MovieDetailesEvent extends Equatable {
  const MovieDetailesEvent();
}

class GetmoviedetailesEvent extends MovieDetailesEvent {
  final int id;
  const GetmoviedetailesEvent(this.id);
  @override
  List<Object> get props => [id];
}

class GetMoiverecomendetionEvent extends MovieDetailesEvent {
  final int id;
  const GetMoiverecomendetionEvent(this.id);

  @override
  List<Object?> get props => [id];
}
