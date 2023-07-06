import 'package:flutter/material.dart';
import 'package:task_12/services/constants/colors.dart';
import 'package:task_12/services/constants/fonts.dart';
import 'package:task_12/services/constants/images.dart';
import 'package:task_12/services/constants/strings.dart';
import 'package:task_12/views/my_bottom_elements_widget.dart';
import 'package:task_12/views/my_select_widget.dart';

class InteriorPage extends StatefulWidget {
  final void Function()function;
  const InteriorPage({super.key, required this.function});

  @override
  State<InteriorPage> createState() => _InteriorPageState();
}

class _InteriorPageState extends State<InteriorPage> {
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
    return     SingleChildScrollView(
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          /// selections into car
          Image(
            image: selection == 0
                ? CustomImages.teslaInsideWhite
                : CustomImages.teslaInside,
            height: 400,
            fit: BoxFit.fitHeight,
          ),

          /// container for bottom elements
          Container(
            margin: EdgeInsets.only(top: height / 2.1),
            height: 300,
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
            padding:
            const EdgeInsets.only(top: 30, left: 30, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// #letter select interior
                Text(
                  CustomStrings.selectInterior,
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
                            type: CustomStrings.blackAndWhite,
                            selected: selected,
                            selection: 0,
                            price: CustomStrings.price1000)),

                    /// #black and white
                    GestureDetector(
                        onTap: selectAllBlack,
                        child: WidgetPrice(
                            price: CustomStrings.included,
                            selected: selected,
                            selection: 1,
                            type: CustomStrings.allBlack))
                  ],
                ),

                /// #selectors
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        selection = 0;
                        setState(() {});
                      },

                      /// selection white element
                      child: Container(
                        margin:
                        const EdgeInsets.only(top: 15, bottom: 10),
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: colors[0],
                            border:
                            colors[0] != CustomColors.oxFFD01000 &&
                                selection == 0
                                ? Border.all(
                                color: CustomColors.oxFFD01000,
                                width: 3)
                                : null),
                      ),
                    ),
                    const SizedBox(
                        width: 25
                    ),


                    GestureDetector(
                      onTap: () {
                        selection = 1;
                        setState(() {});
                      },

                      ///selection black element
                      child: Container(
                        margin:
                        const EdgeInsets.only(top: 15, bottom: 10),
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: colors[1],
                            border:
                            colors[1] != CustomColors.oxFFD01000 &&
                                selection == 1
                                ? Border.all(
                                color: CustomColors.oxFFD01000,
                                width: 3)
                                : null),
                      ),
                    ),
                  ],
                ),

                /// bottom elements
                BottomElements(
                    selected: selected,
                    function: widget.function,
                    price1: CustomStrings.price1000,
                    price2: CustomStrings.price57)
              ],
            ),
          )
        ],
      ),
    );
  }
}
