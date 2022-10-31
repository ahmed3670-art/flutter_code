import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:products_application/constants/value_manager.dart';

//Function? onpressed
Widget customButton(String text, void onpressed) {
  return MaterialButton(
    onPressed: () => onpressed,
    child: Text(
      text,
      style: const TextStyle(
          color: Colors.white,
          fontSize: AppSize.s20,
          fontWeight: FontWeight.w300),
    ),
  );
}
