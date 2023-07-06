
import 'package:dron/services/constants/fonts.dart';
import 'package:dron/services/constants/images.dart';
import 'package:dron/services/constants/strings.dart';
import 'package:flutter/material.dart';

class BuyButton extends StatelessWidget {
  const BuyButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 55,
      decoration: BoxDecoration(
          gradient: CustomFonts.lightBlueTeal,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(22.5),
              topRight: Radius.circular(22.5),
              bottomRight: Radius.circular(8),
              bottomLeft: Radius.circular(8))),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            CustomStrings.buyNow,
            style: CustomFonts.styleBuy,
          ),
          SizedBox(width: 8),
          CustomImages.arrowFull
        ],
      ),
    );
  }
}