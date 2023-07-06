import 'package:flutter/material.dart';
import 'package:task_12/services/constants/colors.dart';
import 'package:task_12/services/constants/fonts.dart';
import 'package:task_12/services/constants/images.dart';
import 'package:task_12/services/constants/strings.dart';
import 'package:task_12/views/my_bottom_elements_widget.dart';
import 'package:task_12/views/my_select_widget.dart';

class ExteriorScreen extends StatefulWidget {
  final void Function() function;
  const ExteriorScreen({super.key, required this.function});

  @override
  State<ExteriorScreen> createState() => _ExteriorScreenState();
}

class _ExteriorScreenState extends State<ExteriorScreen> with AutomaticKeepAliveClientMixin{
  int selected = 0;
late PageController controller;
@override
  void initState() {
    controller = PageController();
    super.initState();
  }
  int? selection;
  List<Color> colors = [
    CustomColors.oxFF000000,
    CustomColors.oxFF979797,
    CustomColors.oxFF044BB6,
    CustomColors.oxFF979797.withOpacity(0.5),
    CustomColors.oxFFD01000
  ];
  @override
  Widget build(BuildContext context) {
   super.build(context);
    /// #performance height
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// #letter select color
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Text(
                CustomStrings.selectColor,
                style: CustomFonts.selectCar,
              ),
            ),

            /// #colors tesla model Y
            SizedBox(
              height: 250,
              child: PageView(
               controller: controller,
                physics: const NeverScrollableScrollPhysics(),
                children:const [
                  Image(image: CustomImages.teslaModelYBlack),
                  Image(image: CustomImages.teslaModelYBlueGrey),
                  Image(image: CustomImages.teslaModelYBlue),
                  Image(image: CustomImages.teslaModelYWhite),
                  Image(image: CustomImages.teslaModelYRed),
                ],
              ),
            ),
            // Image(
            //     image: selection == 0
            //         ? CustomImages.teslaModelYBlack
            //         : (selection == 1)
            //             ? CustomImages.teslaModelYBlueGrey
            //             : (selection == 2)
            //                 ? CustomImages.teslaModelYBlue
            //                 : (selection == 3)
            //                     ? CustomImages.teslaModelYWhite
            //                     : (selection == 4)? CustomImages.teslaModelYRed : CustomImages.teslaModelYWhite),

            /// #pearle white
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: WidgetPrice(
                  type: CustomStrings.headerColorName,
                  selected: selected,
                  selection: 0,
                  price: CustomStrings.price2000),
            ),

            /// #selectors
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                for (int i = 0; i < 5; i++)
                  GestureDetector(
                    onTap: () {
                      controller.animateToPage(i, duration: Duration(milliseconds: 600), curve: Curves.linear);
                      selection = i;
                      setState(() {});
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 25),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: colors[i],
                          border: colors[i] != CustomColors.oxFFD01000 &&
                                  selection == i
                              ? Border.all(
                                  color: CustomColors.oxFFD01000, width: 3)
                              : (colors[i] == CustomColors.oxFFD01000 &&
                                      selection == i)
                                  ? Border.all(
                                      color: CustomColors.oxFF000000,
                                      width: 3)
                                  : null),
                    ),
                  )
              ],
            ),

            /// #divider
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Divider(),
            ),

            /// performance wheels
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Text(CustomStrings.subtextDescription1),
            ),

            ///spoiler
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Text(CustomStrings.subtextDescription2),
            ),

            /// container for bottom elements
            Container(
              margin: const EdgeInsets.only(top: 30),
              height: height / 6,
              decoration:  BoxDecoration(
                color: CustomColors.oxFFFFFFFF,
                boxShadow: [
                  BoxShadow(
                      spreadRadius: 0.1,
                      blurRadius: 2,
                      color: CustomColors.oxFF979797.withOpacity(0.2))
                ],
                borderRadius:const BorderRadius.vertical(top: Radius.circular(25)),
              ),
              child: Column(
                children: [
                  Padding(
                      padding: const EdgeInsets.only(top: 10),

                      /// bottom elements
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 32),
                        child: BottomElements(
                            selected: selected,
                            function: widget.function,
                            price1: CustomStrings.price57,
                            price2: CustomStrings.price46),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
