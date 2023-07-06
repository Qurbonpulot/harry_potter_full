import 'package:flutter/material.dart';
import 'package:task_12/services/constants/colors.dart';

abstract class CustomFonts {
  static String gothamPro = "GothamPro";

  /// ``` style for first pages letter ModelY ```

  static TextStyle styleOne = TextStyle(
      color: CustomColors.oxFFFFFFFF,
      fontSize: 40,
      fontWeight: FontWeight.w400,
      fontFamily: CustomFonts.gothamPro);

  /// ``` style for first pages letter Tesla ```

  static TextStyle styleTwo = TextStyle(
      color: CustomColors.oxFFFFFFFF,
      fontSize: 30,
      fontWeight: FontWeight.w400,
      fontFamily: CustomFonts.gothamPro);

  /// '''style for description which are bold and big
  static TextStyle styleDescriptionOne = TextStyle(
      fontFamily: CustomFonts.gothamPro,
      fontSize: 30,
      color: CustomColors.oxFFFFFFFF,
      fontWeight: FontWeight.bold,
      letterSpacing: 1);

  /// '''style for description which are medium
  static TextStyle styleDescriptionTwo = TextStyle(
      fontFamily: CustomFonts.gothamPro,
      color: CustomColors.oxFFFFFFFF,
      fontWeight: FontWeight.w400,
      fontSize: 15,
      height: 1);

  /// '''style for letter inside from button
  static TextStyle styleButtonText = const TextStyle(
      color: CustomColors.oxFFFFFFFF,
      fontWeight: FontWeight.w600,
      fontSize: 16);

  /// '''style for  mediumTexts
  static TextStyle styleMedium = TextStyle(
    height: 2,
    fontSize: 15,
    fontWeight: FontWeight.w100,
    fontFamily: CustomFonts.gothamPro,
  );

  /// '''style for  mediumRichTexts
  static TextStyle styleMediumRich = TextStyle(
      height: 2,
      fontSize: 15,
      fontWeight: FontWeight.w600,
      fontFamily: CustomFonts.gothamPro);

  /// '''style for  tabBar
  static TextStyle styleTab = TextStyle(
    height: 2,
    fontSize: 15,
    fontWeight: FontWeight.w600,
    fontFamily: CustomFonts.gothamPro,
  );

  /// '''style for  letter select car
  static TextStyle selectCar =
      const TextStyle(color: CustomColors.oxFF979797, fontSize: 20);

  /// '''style for description which are bold and big
  static TextStyle styleDescriptionOneBlack = TextStyle(
      fontFamily: CustomFonts.gothamPro,
      fontSize: 30,
      color: CustomColors.oxFF000000,
      fontWeight: FontWeight.bold,
      letterSpacing: 1);

  /// '''style for description which are medium
  static TextStyle styleDescriptionTwoBlack = TextStyle(
      fontFamily: CustomFonts.gothamPro,
      color: CustomColors.oxFF000000,
      fontWeight: FontWeight.w400,
      fontSize: 15,
      height: 1);

  /// '''style for description which are medium
  static TextStyle styleGreyText =const TextStyle(
      color: CustomColors.oxFF979797, fontSize: 16);

  /// '''style for letter inside from button
  static TextStyle styleButtonTextBlack = const TextStyle(
      color: CustomColors.oxFF000000,
      fontWeight: FontWeight.w500,
      fontSize: 25);
}
