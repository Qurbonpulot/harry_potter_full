import 'package:dron/services/constants/colors.dart';
import 'package:flutter/material.dart';

class ShadowWidget extends StatelessWidget {
  final double x;
  final double y;
  const ShadowWidget({
    super.key,
    required this.x,
    required this.y,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment(x, y),
      child: Container(
        height: 0.1,
        width: 0.1,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                spreadRadius: 70,
                blurRadius: 300,
                color: CustomColors.white.withOpacity(0.1))
          ],
        ),
      ),
    );
  }
}