import 'package:flutter/material.dart';
import 'package:task_12/screens/last_page.dart';
import 'package:task_12/services/constants/colors.dart';
import 'package:task_12/services/constants/fonts.dart';
import 'package:task_12/services/constants/images.dart';
import 'package:task_12/services/constants/strings.dart';
import 'package:task_12/views/my_bottom_elements_widget.dart';
import 'package:task_12/views/my_select_widget.dart';

class AutoPilotPage extends StatefulWidget {
  const AutoPilotPage({super.key});

  @override
  State<AutoPilotPage> createState() => _AutoPilotPageState();
}

class _AutoPilotPageState extends State<AutoPilotPage> {
  int selected = 0;

  int? selection;
  List<Color> colors = [
    CustomColors.oxFF979797.withOpacity(0.3),
    CustomColors.oxFF000000,
  ];

  /// #function for select performance
  selectBlackWhite() {
    selected = 0;
    setState(() {});
  }

  /// #function for select performance
  selectAllBlack() {
    selected = 1;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          /// selections into car
          Image(
            image: CustomImages.map,
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.fitWidth,
          ),

          /// container for bottom elements
          Container(
            margin: EdgeInsets.only(top: height / 2.1),
            height: 310,
            decoration: BoxDecoration(
              color: CustomColors.oxFFFFFFFF,
              boxShadow: [
                BoxShadow(
                    spreadRadius: 0.1,
                    blurRadius: 2,
                    color: CustomColors.oxFF979797.withOpacity(0.2))
              ],
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(25)),
            ),
            padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// #letter Autopilot
                Text(
                  CustomStrings.autopilot2,
                  style: CustomFonts.selectCar,
                ),
                const SizedBox(height: 15),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    /// #perfomance
                    GestureDetector(
                        onTap: selectBlackWhite,
                        child: WidgetPrice(
                            type: CustomStrings.fullSelfDriving,
                            selected: selected,
                            selection: 0,
                            price: CustomStrings.price5)),

                    /// #black and white
                    GestureDetector(
                        onTap: selectAllBlack,
                        child: WidgetPrice(
                            price: CustomStrings.price3,
                            selected: selected,
                            selection: 1,
                            type: CustomStrings.autopilot2))
                  ],
                ),

                const SizedBox(
                  height: 15,
                ),
                Text(
                  CustomStrings.autoPilotText,
                  style: CustomFonts.styleGreyText,
                ),
                const SizedBox(height: 25),

                /// bottom elements
                BottomElements(
                    selected: selected,
                    function: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LastPage(),
                        ),
                      );
                    },
                    price1: CustomStrings.price5,
                    price2: CustomStrings.price3)
              ],
            ),
          )
        ],
      ),
    );
  }
}
