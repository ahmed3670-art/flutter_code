import 'package:flutter/cupertino.dart';

Widget Textstyle(
    String text, double fontsize, FontWeight fontWeight, Color color) {
  return Text(
    text,
    style: TextStyle(fontSize: fontsize, fontWeight: fontWeight, color: color),
  );
}
