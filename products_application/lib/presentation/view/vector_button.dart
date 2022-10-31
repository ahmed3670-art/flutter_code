import 'package:flutter/cupertino.dart';
import 'package:products_application/constants/Config_Size.dart';
import 'package:products_application/constants/asset_manager.dart';
import 'package:products_application/constants/value_manager.dart';
import 'package:products_application/presentation/styles/colors.dart';
import 'package:products_application/presentation/widget/image_assets.dart';

Widget vectorbutton(String imagee) {
  return Container(
    child: image(imagee),
    margin: EdgeInsets.only(top: 50),
    decoration: BoxDecoration(
        color: AppColor.white, borderRadius: BorderRadius.circular(10)),
    width: ConfigSize.screenWidth! / AppSize.s8_5,
    height: ConfigSize.screenHeight! / AppSize.s18,
  );
}
