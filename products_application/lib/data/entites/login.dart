import 'package:equatable/equatable.dart';

class Login extends Equatable {
  int status;
  String message;
  String code;
  Login({required this.code, required this.message, required this.status});

  @override
  // TODO: implement props
  List<Object?> get props => [status, message, code];
}
