import 'package:flutter/material.dart';

class MyClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    double y = size.height;
    double x = size.width;
    return Rect.fromCenter(center: Offset(x / 2, y / 2), width: x, height: y);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) => false;
}