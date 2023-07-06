

import 'package:flutter/material.dart';
import 'package:task_12/services/constants/colors.dart';
import 'package:task_12/services/constants/fonts.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final bool? isBlack;
  final void Function() function;
  const ButtonWidget({super.key, required this.text, required this.function, this.isBlack});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: function,
      style: OutlinedButton.styleFrom(
          side: const BorderSide(color: CustomColors.oxFFD01000),
          padding: const EdgeInsets.symmetric(horizontal: 50)),
      child: Text(
        text,
        style:isBlack == null ? CustomFonts.styleButtonText : CustomFonts.styleButtonTextBlack,
      ),
    );
  }
}
