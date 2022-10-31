import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:products_application/constants/value_manager.dart';
import 'package:products_application/presentation/styles/colors.dart';

Widget textField(String hint, TextEditingController textEditingController) {
  return TextField(
    controller: textEditingController,
    decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        hintText: hint,
        hintStyle: TextStyle(fontSize: AppSize.s12)),
  );
}
