import 'package:flutter/cupertino.dart';
import 'package:products_application/constants/Config_Size.dart';
import 'package:products_application/constants/value_manager.dart';
import 'package:products_application/presentation/styles/colors.dart';
import 'package:products_application/presentation/styles/decoration.dart';

Widget boxview(String image, double boxwidth, double boxhight, double imagewidt,
    double imagehight) {
  return Container(
    margin: EdgeInsets.only(left: AppMargine.m12),
    width: boxwidth,
    height: boxhight,
    decoration: BoxDecoration(
        color: AppColor.white,
        boxShadow: boxShadow(),
        borderRadius: BorderRadius.circular(AppSize.s20)),
    child: Center(
      child: Image.network(
        image,
        width: imagewidt,
        height: imagehight,
      ),
    ),
  );
}
