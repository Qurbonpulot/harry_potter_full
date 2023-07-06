
import 'package:dron/services/constants/colors.dart';
import 'package:dron/services/constants/fonts.dart';
import 'package:dron/services/constants/images.dart';
import 'package:flutter/material.dart';

class SecondBack extends StatelessWidget {
  const SecondBack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
          alignment: Alignment.center,
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            gradient: CustomFonts.lightDarkTeal,
            boxShadow: [
              BoxShadow(blurRadius: 0.1, color: CustomColors.white)
            ],
          ),
          child: CustomImages.back),
    );
  }
}
