import 'package:dron/services/constants/colors.dart';
import 'package:dron/services/constants/fonts.dart';
import 'package:dron/services/constants/strings.dart';
import 'package:flutter/material.dart';

class CustomHeaderContainer extends StatelessWidget {
  final Image image;
  final String name;
  final String about;
  const CustomHeaderContainer({
    super.key,
    required this.image,
    required this.name,
    required this.about,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      padding: EdgeInsets.only(left: 25),
      height: 220,
      width: 300,
      decoration: BoxDecoration(
        gradient: CustomFonts.lightDarkTeal,
        borderRadius: BorderRadius.all(Radius.circular(25)),
        border: Border.all(
          color: CustomColors.lightTeal,
        ),
      ),
      child: Column(
        children: [
          Transform.scale(
            ///#first Drones image
            child: image,
            scale: 2.5,
          ),
          SizedBox(height: 35),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              ///#text djiAir
              name,
              style: CustomFonts.styleMax,
            ),
          ),
          SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  ///# text getFeel
                  about,
                  style: CustomFonts.styleMedium,
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 15, left: 5),
                height: 50,
                width: 130,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  ),
                  gradient: CustomFonts.blueTeal,
                ),
                child: Text(
                  ///#buy now
                  CustomStrings.buyNow,
                  style: CustomFonts.styleBuy,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
