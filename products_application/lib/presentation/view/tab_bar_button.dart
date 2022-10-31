import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:products_application/constants/Config_Size.dart';
import 'package:products_application/constants/asset_manager.dart';
import 'package:products_application/constants/value_manager.dart';
import 'package:products_application/presentation/styles/colors.dart';
import 'package:products_application/presentation/widget/tab_bar_icon.dart';

Widget tabBarButtons(
    TabController? controller, int index, String company, String icon) {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSize.s40),
        color: (controller?.index == index ? AppColor.blue : AppColor.white)),
    width: ConfigSize.screenWidth! / 3.3,
    height: ConfigSize.screenHeight! / 15,
    child: Row(
      children: [
        SizedBox(
          width: 10,
        ),
        icon2(icon),
        SizedBox(
          width: 10,
        ),
        Text(
          company,
          style: TextStyle(
              color: (controller?.index == index
                  ? AppColor.white
                  : AppColor.black),
              fontSize: 20),
        )
      ],
    ),
  );
}
