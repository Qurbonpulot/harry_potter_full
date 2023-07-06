import 'package:flutter/material.dart';
import 'package:task_12/services/constants/colors.dart';
import 'package:task_12/services/constants/fonts.dart';

class DescriptionWidget extends StatelessWidget {
  final int? selectionColor;
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  const DescriptionWidget(
      {super.key,
      required this.text1,
      required this.text2,
      required this.text3,
      required this.text4,
      this.selectionColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,

      /// #description about tesla
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Text(text1,
                  style: selectionColor == null
                      ? CustomFonts.styleDescriptionOne
                      : CustomFonts.styleDescriptionOneBlack),
              Text(text2,
                  style: selectionColor == null
                      ? CustomFonts.styleDescriptionTwo
                      : CustomFonts.styleDescriptionTwoBlack),
            ],
          ),
          const VerticalDivider(width: 1, color: CustomColors.oxFF979797),
          Column(
            children: [
              Text(text3,
                  style: selectionColor == null
                      ? CustomFonts.styleDescriptionOne
                      : CustomFonts.styleDescriptionOneBlack),
              Text(text4,
                  style: selectionColor == null
                      ? CustomFonts.styleDescriptionTwo
                      : CustomFonts.styleDescriptionTwoBlack),
            ],
          ),
        ],
      ),
    );
  }
}
