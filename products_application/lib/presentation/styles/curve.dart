import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class curvecliper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path p = Path();
    p.lineTo(0, size.height);
    p.quadraticBezierTo(
        size.width / 2, size.height / 2, size.width, size.height);
    // p.quadraticBezierTo(3 * size.width / 4, 3 * size.height / 6, size.width,
    //     4 * size.height / 5);
    p.lineTo(size.width, 0);
    p.close();

    return p;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}
