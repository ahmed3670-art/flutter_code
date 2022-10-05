import 'package:equatable/equatable.dart';

class Genars extends Equatable {
  final int id;
  final String name;

  const Genars({required this.id, required this.name});

  @override
  // TODO: implement props
  List<Object?> get props => [id, name];
}
