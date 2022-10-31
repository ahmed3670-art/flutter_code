import 'package:flutter/material.dart';
import 'package:products_application/constants/config_size.dart';
import 'package:products_application/constants/value_manager.dart';
import 'package:products_application/presentation/styles/colors.dart';
import 'package:products_application/presentation/styles/decoration.dart';
import 'package:products_application/presentation/widget/image_assets.dart';

Widget icon2(
  String path,
) {
  return Container(
      width: ConfigSize.defaultSize! * AppSize.s4,
      height: ConfigSize.defaultSize! * AppSize.s4,
      padding: const EdgeInsets.all(AppPading.p6),
      decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.all(
              Radius.circular(ConfigSize.defaultSize! * AppSize.s5)),
          boxShadow: boxShadow()),
      child: image(path));
}
