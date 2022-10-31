part of 'global_bloc.dart';

class GlobalState extends Equatable {
  final List<Help> helpdata;
  final List<Products> productsdata;

  const GlobalState({
    this.helpdata = const [],
    this.productsdata = const [],
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        helpdata,
        productsdata,
      ];
}
