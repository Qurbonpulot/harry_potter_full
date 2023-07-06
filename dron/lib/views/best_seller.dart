import 'package:dron/services/constants/colors.dart';
import 'package:dron/services/constants/fonts.dart';
import 'package:dron/services/constants/images.dart';
import 'package:dron/services/constants/strings.dart';
import 'package:dron/views/buy_now.dart';
import 'package:dron/views/grid_container.dart';
import 'package:flutter/material.dart';

class BestSeller extends StatelessWidget {
  const BestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return   Expanded(
      flex: 3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding:
            EdgeInsets.symmetric(horizontal: 7, vertical: 2),
            height: 20,
            width: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(12.5),
                ),
                color: CustomColors.white.withOpacity(0.3)),
            child: Row(
              children: [
                CustomImages.lighting,
                Text(CustomStrings.bestSeller,
                    style: CustomFonts.styleBestSeller)
              ],
            ),
          ),
          SizedBox(height: 7),
          Text(CustomStrings.djiMatrice,
              style: CustomFonts.styleMax),
          SizedBox(height: 8),
          Text(CustomStrings.getFeelN,
              style: CustomFonts.styleMedium),
          SizedBox(height: 10),

          ///#characters
          Expanded(
            child: GridView.count(
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              childAspectRatio: 1.8,
              children: [
                GridContainer(
                  image: CustomImages.video,
                  headerText: CustomStrings.videoQuality,
                  text: CustomStrings.n6k,
                ),
                GridContainer(
                  image: CustomImages.clock,
                  headerText: CustomStrings.flightTime,
                  text: CustomStrings.nA,
                  hasGradient: true,
                ),
                GridContainer(
                  image: CustomImages.outlineLighting,
                  headerText: CustomStrings.maxSpeed,
                  text: CustomStrings.n23,
                  hasGradient: true,
                ),
                GridContainer(
                  image: CustomImages.nfc,
                  headerText: CustomStrings.connectivity,
                  text: CustomStrings.n7,
                ),
              ],
            ),
          ),

          ///#button buy now
          BuyButton()
        ],
      ),
    );
  }
}
