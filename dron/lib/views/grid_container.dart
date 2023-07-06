import 'package:dron/services/constants/colors.dart';
import 'package:dron/services/constants/fonts.dart';
import 'package:flutter/material.dart';

class GridContainer extends StatelessWidget {
  final Image image;
  final String headerText;
  final String text;
  final bool hasGradient;
  const GridContainer({
    super.key,
    required this.image,
    required this.headerText,
    required this.text,
    this.hasGradient = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(14),
          ),
          color: !hasGradient ? CustomColors.tTeal : null,
          gradient: hasGradient
              ? CustomFonts.lightDarkTeal
              : null),
      alignment: Alignment.center,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          image,
          Expanded(
            child: RichText(
              text: TextSpan(
                  text: headerText,
                  style: CustomFonts.styleGrid,
                  children: [
                    TextSpan(
                      text: text,
                      style: CustomFonts.styleMax
                    )
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}