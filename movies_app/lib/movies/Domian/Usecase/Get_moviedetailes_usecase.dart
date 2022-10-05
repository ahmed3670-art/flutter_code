import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movies_app/core/Base_usecases/Base_usecases.dart';
import 'package:movies_app/core/Error/faluire.dart';
import 'package:movies_app/movies/Domian/Entities/Movie_Detailes.dart';
import 'package:movies_app/movies/Domian/Repository/base_movie_Repository.dart';

class GetMoiveDetielsusecase
    extends BaseUsecases<MovieDetaiels, MovieDetielsParameter> {
  final BaseMoiveRepository baseMoiveRepository;
  GetMoiveDetielsusecase(this.baseMoiveRepository);
  @override
  Future<Either<failure, MovieDetaiels>> call(
      MovieDetielsParameter parameter) async {
    return await baseMoiveRepository.GetMoivedetiels(parameter);
  }
}

class MovieDetielsParameter extends Equatable {
  final int id;
  const MovieDetielsParameter({required this.id});

  @override
  // TODO: implement props
  List<Object?> get props => [id];
}
