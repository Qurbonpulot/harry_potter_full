
import 'package:flutter/material.dart';
import 'package:task_12/services/constants/fonts.dart';
import 'package:task_12/services/constants/strings.dart';
import 'package:task_12/views/my_button_widget.dart';

class BottomElements extends StatelessWidget {
  final int selected;
  final void Function() function;
  final String price1;
  final String price2;
  const BottomElements(
      {super.key,
        required this.selected,
        required this.function,
        required this.price1,
        required this.price2});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          selected == 0 ? price1 : price2,
          style: CustomFonts.styleButtonTextBlack,
        ),
        ButtonWidget(
          text: CustomStrings.next,
          isBlack: true,
          function: function,
        )
      ],
    );
  }
}
