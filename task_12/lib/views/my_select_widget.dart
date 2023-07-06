
import 'package:flutter/material.dart';
import 'package:task_12/services/constants/fonts.dart';

import '../services/constants/colors.dart';

class WidgetPrice extends StatelessWidget {
  final int selection;
  final int selected;
  final String type;
  final String price;
  const WidgetPrice(
      {super.key,
        required this.selected,
        required this.type,
        required this.price,
        required this.selection});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          type,
          style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              fontFamily: CustomFonts.gothamPro,
              color: selected == selection
                  ? CustomColors.oxFF000000
                  : CustomColors.oxFF979797),
        ),
        Text(
          price,
          style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              fontFamily: CustomFonts.gothamPro,
              color: selected == selection
                  ? CustomColors.oxFFD01000
                  : CustomColors.oxFF979797),
        )
      ],
    );
  }
}
