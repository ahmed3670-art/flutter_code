import 'package:flutter/material.dart';
import 'package:products_application/constants/value_manager.dart';
import 'package:products_application/presentation/styles/colors.dart';

List<BoxShadow>? boxShadow() {
  return [
    BoxShadow(
      color: Colors.grey.withOpacity(AppSize.s0_5),
      spreadRadius: AppSize.s5,
      blurRadius: AppSize.s8,
      offset:
          const Offset(AppSize.s0, AppSize.s3), // changes position of shadow
    ),
  ];
}

Gradient? background() {
  return LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [0, 0.5],
      colors: [AppColor.blue.withOpacity(.85), AppColor.blue.withOpacity(0)]);
}
