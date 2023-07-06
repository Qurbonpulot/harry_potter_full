import 'package:flutter/material.dart';
import 'package:task_12/screens/auto_pilot.dart';
import 'package:task_12/screens/exterior_screen.dart';
import 'package:task_12/screens/interior_page.dart';
import 'package:task_12/screens/performance_screen.dart';
import 'package:task_12/services/constants/colors.dart';
import 'package:task_12/services/constants/fonts.dart';
import 'package:task_12/services/constants/images.dart';
import 'package:task_12/services/constants/strings.dart';

class CarScreen extends StatefulWidget {
  const CarScreen({super.key});

  @override
  State<CarScreen> createState() => _CarScreenState();
}

class _CarScreenState extends State<CarScreen> {
  late PageController controller;
  int selectedIndex = 0;
  int lastPage = 0;

  final buttons = [
    "1. Car",
    "2. Exterior",
    "3. Interior",
    "4. Autopilot",
  ];
  @override
  void initState() {
    controller = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// #main ap bar
      appBar: AppBar(
        /// #back button app bar
        leading: const BackButton(color: CustomColors.oxFF000000),

        /// #letter tesla in app bar
        title: const Image(image: CustomImages.teslaBlack),
        centerTitle: true,

        bottom: PreferredSize(
          preferredSize: Size(MediaQuery.sizeOf(context).width, 60),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                for (int i = 0; i < buttons.length; i++)
                  GestureDetector(
                    onTap: () {
                      if (i <= lastPage) {
                        selectedIndex = i;
                        setState(() {});
                        controller.jumpToPage(i);
                      }
                    },
                    child: Column(
                      children: [
                        Text(
                          buttons[i],
                          style: (lastPage >= i)
                              ? const TextStyle(
                                  color: CustomColors.oxFF000000,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                )
                              : const TextStyle(
                                  color: CustomColors.oxFF979797,
                                  fontSize: 16,
                                ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 15),
                          height: 2,
                          width: buttons[i].length * 7,
                          color: (selectedIndex == i)
                              ? CustomColors.oxFFD01000
                              : Colors.transparent,
                        )
                      ],
                    ),
                  )
              ],
            ),
          ),
        ),

      ),

      body: PageView(
        physics:const NeverScrollableScrollPhysics(),
        controller: controller,
        children: [
          /// #performance page
          PerformanceScreen(
            function: () {
              selectedIndex = 1;
              lastPage = 1;
              setState(() {});
              controller.jumpToPage(1);
            },
          ),

          /// # exterior page
          ExteriorScreen(
            function: () {
              selectedIndex = 2;
              lastPage = 2;
              setState(() {});
              controller.jumpToPage(2);
            },
          ),

          /// # interior page
          InteriorPage(
            function: () {
              selectedIndex = 3;
              lastPage = 3;
              setState(() {});
              controller.jumpToPage(3);
            },
          ),

          /// #autopilot page
          const AutoPilotPage(),

          ///
        ],
      ),
    );
  }
}
