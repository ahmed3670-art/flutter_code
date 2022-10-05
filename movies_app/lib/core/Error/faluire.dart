import 'package:equatable/equatable.dart';

abstract class failure extends Equatable {
  final String message;
  const failure(this.message);

  @override
  List<Object> get props => [message];
}

class serverfailur extends failure {
  serverfailur(super.message);
}
