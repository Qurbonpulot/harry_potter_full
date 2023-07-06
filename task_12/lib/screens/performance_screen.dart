import 'package:flutter/material.dart';
import 'package:task_12/services/constants/colors.dart';
import 'package:task_12/services/constants/fonts.dart';
import 'package:task_12/services/constants/images.dart';
import 'package:task_12/services/constants/strings.dart';
import 'package:task_12/views/my_bottom_elements_widget.dart';
import 'package:task_12/views/my_description_widget.dart';
import 'package:task_12/views/my_select_widget.dart';

class PerformanceScreen extends StatefulWidget {
  final void Function()function;
  const PerformanceScreen({super.key, required this.function});

  @override
  State<PerformanceScreen> createState() => _PerformanceScreenState();
}

class _PerformanceScreenState extends State<PerformanceScreen> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    /// #function for select performance
    selectPerformance() {
      selected = 0;
      setState(() {});
    }

    /// #function for select long range
    selectLongRange() {
      selected = 1;
      setState(() {});
    }

    /// #performance height
    double height = MediaQuery.of(context).size.height;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// #letter select car
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Text(
                  CustomStrings.selectCar,
                  style: CustomFonts.selectCar,
                ),
              ),

              /// #red tesla model Y
              const Image(image: CustomImages.teslaModelYRed),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    /// #perfomance
                    GestureDetector(
                        onTap: selectPerformance,
                        child: WidgetPrice(
                            type: CustomStrings.performance,
                            selected: selected,
                            selection: 0,
                            price: CustomStrings.price55)),

                    /// #long press
                    GestureDetector(
                        onTap: selectLongRange,
                        child: WidgetPrice(
                            price: CustomStrings.price46,
                            selected: selected,
                            selection: 1,
                            type: CustomStrings.longRange))
                  ],
                ),
              ),

              /// container which situated descriptions
              Container(
                height: height / 2.4,
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
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 25),

                      /// descriptions
                      child: DescriptionWidget(
                        selectionColor: 1,
                        text1: CustomStrings.text3s,
                        text2: CustomStrings.mph60,
                        text3: CustomStrings.mph150,
                        text4: CustomStrings.topSpeed,
                      ),
                    ),

                    const SizedBox(height: 20),

                    /// information
                    Text(CustomStrings.descriptionText,
                        style: CustomFonts.styleGreyText),

                    /// bottom elements
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 15),
                      child: BottomElements(
                          selected: selected,
                          function: widget.function,
                          price1: CustomStrings.price55,
                          price2: CustomStrings.price46),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
