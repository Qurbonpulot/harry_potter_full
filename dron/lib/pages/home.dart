import 'package:dron/services/constants/colors.dart';
import 'package:dron/services/constants/images.dart';
import 'package:dron/services/constants/strings.dart';
import 'package:dron/views/bottom_container.dart';
import 'package:dron/views/center_content.dart';
import 'package:dron/views/header_container.dart';
import 'package:dron/views/shadow.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
              CustomImages.leading,
              SizedBox(width: 8),
              RichText(
                text: TextSpan(
                  /// #text drone
                  text: CustomStrings.drone,
                  style: TextStyle(
                    color: CustomColors.lightBlue,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Circular Std",
                    fontSize: 17,
                  ),
                  children: [
                    TextSpan(
                      /// #text kart
                      text: CustomStrings.kart,
                      style: TextStyle(color: CustomColors.white),
                    )
                  ],
                ),
              )
            ],
          ),
          leadingWidth: 200,
          actions: [
            /// #profile account icon
            CustomImages.account
          ],
          toolbarHeight: 90),
      body: Stack(
        children: [
          /// #backgrounds white shadows
          ShadowWidget(x: -0.7, y: -0.7),
          ShadowWidget(x: 0.7, y: 0.7),

          Column(
            children: [
              SizedBox(
                height: 25,
              ),
              SizedBox(
                height: 220,
                child: ListView(
                  clipBehavior: Clip.none,
                  scrollDirection: Axis.horizontal,
                  children: [
                    ///# header drones
                    CustomHeaderContainer(
                      name: CustomStrings.djiAir,
                      about: CustomStrings.getFeel,
                      image: CustomImages.firstDrone,
                    ),
                    CustomHeaderContainer(
                      name: CustomStrings.djiMatrice,
                      about: CustomStrings.getFM,
                      image: CustomImages.secondDrone,
                    ),
                  ],
                ),
              ),

              ///# center content
              CenterContent(),

              SizedBox(
                height: 300,
                child: ListView(
                  clipBehavior: Clip.none,
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(width: 25),

                    ///# bottom containers
                    BottomContainer(
                      image: CustomImages.redDrone,
                    ),
                    SizedBox(width: 50),
                    BottomContainer(
                      image: CustomImages.whiteDrone,
                    ),
                    SizedBox(width: 50),
                    BottomContainer(
                      image: CustomImages.redDrone,
                    ),
                    SizedBox(width: 50),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
