
import 'package:dron/services/constants/colors.dart';
import 'package:flutter/material.dart';

class MyPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double x = size.width;
    double y = size.height;
    Paint paint = Paint()
      ..color = CustomColors.darkTeal.withOpacity(0.5)
      ..style = PaintingStyle.fill;
    Path path = Path()
      ..moveTo(0, 0)
      ..lineTo(0.35 * x, 0)
      ..lineTo(0, 0.2 * y)
      ..lineTo(0, 0)
      ..moveTo(0.65 * x, 0)
      ..lineTo(x, 0)
      ..lineTo(x, 0.2 * y)
      ..close()
      ..moveTo(0, 0.28 * y)
      ..lineTo(0.5 * x, 0)
      ..lineTo(x, 0.28 * y)
      ..lineTo(x, 0.35 * y)
      ..lineTo(0.5 * x, 0.07 * y)
      ..lineTo(0, 0.35 * y)
      ..close()
      ..moveTo(0, 0.42 * y)
      ..lineTo(0.5 * x, 0.15 * y)
      ..lineTo(x, 0.42 * y)
      ..lineTo(x, 0.48 * y)
      ..lineTo(0.5 * x, 0.23 * y)
      ..lineTo(0, 0.48 * y)
      ..close()
      ..moveTo(0, 0.55 * y)
      ..lineTo(0.5 * x, 0.3 * y)
      ..lineTo(x, 0.55 * y)
      ..lineTo(x, y)
      ..lineTo(0, y)
      ..close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}