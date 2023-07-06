import 'package:dron/services/constants/colors.dart';
import 'package:flutter/material.dart';

abstract class CustomFonts{
  ///text styles

  static TextStyle styleMax = TextStyle(
      color: CustomColors.white,
      fontFamily: "Circular Std",
      fontWeight: FontWeight.bold,
      fontSize: 17);
  static TextStyle styleGrid = TextStyle(
      color: CustomColors.lightPurple,
      fontFamily: "Circular Std",
      fontWeight: FontWeight.bold,
      height: 1.5);
  static TextStyle styleMedium = TextStyle(
      color: CustomColors.lightPurple,
      fontFamily: "Circular Std");
  static TextStyle styleBuy = TextStyle(
      color: CustomColors.black,
      fontSize: 17,
      fontWeight: FontWeight.w500,
      fontFamily: "Circular Std");
  static TextStyle styleBestSeller =  TextStyle(
      color: CustomColors.yellow,
      fontFamily: "Circular Std",
      fontSize: 9,
      fontWeight: FontWeight.bold);



  ///gradients
  static Gradient blueTeal = LinearGradient(
      colors: [
        CustomColors.blue,
        CustomColors.teal
      ],
      end: Alignment.centerLeft,
      begin: Alignment.centerRight);
  static Gradient lightDarkTeal = LinearGradient(
      colors: [
        CustomColors.lightTeal, CustomColors.darkTeal],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight);
  static Gradient lightBlueTeal =LinearGradient(
      colors: [
        CustomColors.lightBlue,
        CustomColors.teal
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight);
}