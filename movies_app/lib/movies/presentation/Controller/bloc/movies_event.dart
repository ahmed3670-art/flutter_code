import 'package:equatable/equatable.dart';

abstract class MoviesEvent extends Equatable {
  MoviesEvent();
  @override
  List<Object?> get props => [];
}

class GetnowplayingMoviesEvents extends MoviesEvent {}

class GetMostPobularEvents extends MoviesEvent {}

class GetTopRatedEvents extends MoviesEvent {}
