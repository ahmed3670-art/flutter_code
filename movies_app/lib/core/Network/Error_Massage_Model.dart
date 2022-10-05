import 'package:equatable/equatable.dart';

class ErrorMassageModel extends Equatable {
  bool success;
  final int statusCode;
  final String statusMessage;

  ErrorMassageModel(
      {required this.statusCode,
      required this.statusMessage,
      required this.success});

  factory ErrorMassageModel.fromjason(Map<String, dynamic> jason) {
    return ErrorMassageModel(
        statusCode: jason["success"],
        statusMessage: jason["status_code"],
        success: jason["status_message"]);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [success, statusCode, statusMessage];
}
