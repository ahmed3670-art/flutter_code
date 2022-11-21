import 'package:flutter/material.dart';

class mybutton extends StatelessWidget {
  Color color;
  String text;

  Function onPressed;

  mybutton({required this.onPressed, required this.color, required this.text});
  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      elevation: 10,
      borderRadius: BorderRadius.circular(20),
      child: MaterialButton(
        onPressed: () => onPressed,
        minWidth: 300,
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
