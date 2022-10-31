import 'package:products_application/data/entites/login.dart';

class LoginModel extends Login {
  LoginModel(
      {required super.code, required super.message, required super.status});

  factory LoginModel.fromJason(Map<String, dynamic> jason) {
    return LoginModel(
        status: jason["status"],
        message: jason["message"],
        code: jason["code"] ?? "0");
  }
}
