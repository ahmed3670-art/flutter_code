import 'package:flutter/cupertino.dart';
import 'package:products_application/constants/Config_Size.dart';
import 'package:products_application/presentation/styles/decoration.dart';

Widget Screenbackground() {
  return Container(
    width: ConfigSize.screenWidth,
    height: ConfigSize.screenHeight,
    decoration: BoxDecoration(gradient: background()),
  );
}
