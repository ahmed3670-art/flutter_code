import 'package:flutter/cupertino.dart';
import 'package:products_application/constants/Config_Size.dart';
import 'package:products_application/constants/value_manager.dart';
import 'package:products_application/presentation/styles/colors.dart';
import 'package:products_application/presentation/styles/decoration.dart';
import 'package:products_application/presentation/widget/image_assets.dart';

Widget icon(
  String path,
) {
  return Container(
      width: ConfigSize.defaultSize! * AppSize.s6,
      height: ConfigSize.defaultSize! * AppSize.s6,
      padding: const EdgeInsets.all(AppPading.p8),
      decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.all(
              Radius.circular(ConfigSize.defaultSize! * AppSize.s5)),
          boxShadow: boxShadow()),
      child: image(path));
}
