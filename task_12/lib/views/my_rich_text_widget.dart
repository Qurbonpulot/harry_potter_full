import 'package:flutter/material.dart';
import 'package:task_12/services/constants/fonts.dart';

class WidgetRichText extends StatelessWidget {
  final String text1;
  final String text2;
  const WidgetRichText({super.key, required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: text1,
        style: CustomFonts.styleMedium,
        children: [TextSpan(text: text2, style: CustomFonts.styleMediumRich)],
      ),
    );
  }
}
