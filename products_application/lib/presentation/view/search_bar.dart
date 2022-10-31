import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:products_application/constants/value_manager.dart';

import '../../constants/Config_Size.dart';

Widget searchBar() {
  return Container(
    margin: EdgeInsets.only(
        left: ConfigSize.screenWidth! / AppMargine.m22,
        top: ConfigSize.screenHeight! / AppMargine.m17,
        right: ConfigSize.screenWidth! / AppMargine.m20),
    width: ConfigSize.screenWidth! / AppSize.s1_4,
    height: ConfigSize.screenHeight! / AppSize.s18,
    child: TextField(
      cursorColor: Colors.grey,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none),
        hintText: 'Search',
        hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
      ),
    ),
  );
}
