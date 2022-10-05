import 'package:movies_app/core/Network/Error_Massage_Model.dart';

class ServerException implements Exception {
  ErrorMassageModel errorMassageModel;
  ServerException({required this.errorMassageModel});
}
