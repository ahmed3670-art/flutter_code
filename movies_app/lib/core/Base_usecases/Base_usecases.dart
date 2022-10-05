import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movies_app/core/Error/faluire.dart';

abstract class BaseUsecases<T, Parametr> {
  Future<Either<failure, T>> call(Parametr parametr);
}

class Noparametr extends Equatable {
  const Noparametr();
  @override
  // TODO: implement props
  List<Object?> get props => [];
}
