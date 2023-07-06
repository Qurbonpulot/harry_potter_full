import 'package:dron/services/constants/colors.dart';
import 'package:dron/services/constants/fonts.dart';
import 'package:dron/services/constants/images.dart';
import 'package:dron/views/best_seller.dart';
import 'package:dron/views/my_clipper.dart';
import 'package:dron/views/second_back.dart';
import 'package:dron/views/shadow.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// #background color
      backgroundColor: CustomColors.darkTeal,

      ///#ap bar
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,

          ///#app bars sources
          leading: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(width: 29),

              ///#app bar leading image

              SizedBox(width: 8),

              /// #second back button
              SecondBack()
            ],
          ),
          leadingWidth: 200,
          actions: [
            /// #profile account icon
            CustomImages.leading,
          ],
          toolbarHeight: 90),
      body: Stack(
        children: [
          /// #backgrounds white shadows
          ShadowWidget(x: -0.7, y: -0.8),
          ShadowWidget(x: 0.7, y: 0.7),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment(0, 0.3),

                        ///# container under drone
                        child: ClipOval(
                          child: Container(
                            alignment: Alignment.center,
                            height: 81,
                            width: 351,
                            decoration: BoxDecoration(
                              gradient: CustomFonts.blueTeal,
                            ),

                            ///#second container under drone
                            child: ClipOval(
                              clipper: MyClipper(),
                              child: Container(
                                height: 80,
                                width: 350,
                                decoration: BoxDecoration(
                                  gradient: CustomFonts.lightDarkTeal,
                                ),
                              ),
                            ),
                          ),
                          clipper: MyClipper(),
                        ),
                      ),
                      Align(
                          child: Transform.scale(
                              scale: 2.3, child: CustomImages.whiteDrone1),
                          alignment: Alignment(0, -1)),
                      Align(
                          alignment: Alignment(0, 0.8),
                          child: CustomImages.i3d),
                    ],
                  ),
                ),

                ///#best seller
                BestSeller()
              ],
            ),
          )
        ],
      ),
    );
  }
}
