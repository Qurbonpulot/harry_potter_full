
import 'package:dron/services/constants/colors.dart';
import 'package:dron/services/constants/fonts.dart';
import 'package:dron/services/constants/images.dart';
import 'package:dron/views/my_paint.dart';
import 'package:flutter/material.dart';

class BottomContainer extends StatelessWidget {
  final Image image;
  const BottomContainer({
    super.key, required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      decoration: BoxDecoration(
        gradient: CustomFonts.lightDarkTeal,
        borderRadius: BorderRadius.all(Radius.circular(25)),
        border: Border.all(
          color: CustomColors.lightTeal,
        ),
      ),
      child: CustomPaint(
        painter: MyPaint(),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /// #icon dji
              CustomImages.dji,
              Transform.scale(
                /// #red drone
                child: image,
                scale: 1.3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}