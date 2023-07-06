import 'package:dron/pages/second_page.dart';
import 'package:dron/services/constants/colors.dart';
import 'package:dron/services/constants/fonts.dart';
import 'package:dron/services/constants/images.dart';
import 'package:dron/services/constants/strings.dart';
import 'package:flutter/material.dart';

class CenterContent extends StatelessWidget {
  const CenterContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    ///#NEW
                    CustomStrings.news,
                    style: CustomFonts.styleMax,
                  ),
                  SizedBox(width: 5),

                  ///#new icon
                  CustomImages.icon
                ],
              ),
              Text(
                ///#arrival
                CustomStrings.arrivals,
                style: CustomFonts.styleMax,
              ),
            ],
          ),
          GestureDetector(
            child: CustomImages.arrow,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SecondPage(),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
