import 'package:flutter/material.dart';
import 'package:task_12/services/constants/colors.dart';
import 'package:task_12/services/constants/images.dart';
import 'package:task_12/services/constants/strings.dart';
import 'package:task_12/views/my_button_widget.dart';

class LastPage extends StatefulWidget {
  const LastPage({super.key});

  @override
  State<LastPage> createState() => _LastPageState();
}

class _LastPageState extends State<LastPage> {
  @override
  Widget build(BuildContext context) {
    return     Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          alignment: const Alignment(0, -0.9),
          children: [

            /// # image car black tesla modulY
            const Image(image: CustomImages.show),

            ///# letter tesla
            const Image(image: CustomImages.teslaGrey),



            Container(
              margin: const EdgeInsets.only(top: 550),
              padding: const EdgeInsets.all(48),
              height: 350,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: CustomColors.oxFF000000,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(25),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [


                  /// #summary
                  const Text(
                    CustomStrings.summary,
                    style: TextStyle(
                        fontSize: 25, color: CustomColors.oxFFFFFFFF, fontFamily: "GothamPro"),
                  ),


                 const SizedBox(height: 10),
                  const Text(CustomStrings.yourModelY,
                      style: TextStyle(
                          fontSize: 35,
                          color: CustomColors.oxFFFFFFFF,
                          fontWeight: FontWeight.w600)),

                  /// #price
                  const Text(CustomStrings.price60,
                      style: TextStyle(
                          fontSize: 35,
                          color: CustomColors.oxFFFFFFFF,
                          fontWeight: FontWeight.w300)),
                const  SizedBox(height: 30),

                  ///#button pay
                  ButtonWidget(text: CustomStrings.pay, function: () {})
                ],
              ),
            )
          ],
        ),
      ),
    )
    ;
  }
}
