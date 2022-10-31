import 'package:flutter/material.dart';
import 'package:products_application/constants/string_manager.dart';
import 'package:products_application/data/data_providers/remote/dio_helper.dart';
import 'package:products_application/presentation/router/app_router.dart';

class onpressed {
  void onpressedlogin(
      String name, String phonenumber, BuildContext context) async {
    final result = await DioHelper().postloginData(name, phonenumber);
    if (result.status == 200) {
      Navigator.pushNamed(context, AppRouter.homeRoute);
    } else {
      var snackBar = SnackBar(content: Text(AppString.loginerror));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  void onpressedlogout(BuildContext context) {
    Navigator.pop(context);
  }
}
