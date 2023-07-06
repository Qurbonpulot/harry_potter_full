import 'package:flutter/material.dart';
import 'package:task_12/screens/car_screen.dart';
import 'package:task_12/services/constants/colors.dart';
import 'package:task_12/services/constants/fonts.dart';
import 'package:task_12/services/constants/images.dart';
import 'package:task_12/services/constants/strings.dart';
import 'package:task_12/views/my_button_widget.dart';
import 'package:task_12/views/my_description_widget.dart';
import 'package:task_12/views/my_rich_text_widget.dart';

class ModelY extends StatefulWidget {
  const ModelY({super.key});

  @override
  State<ModelY> createState() => _ModelYState();
}

class _ModelYState extends State<ModelY> {
  @override
  Widget build(BuildContext context) {

    /// #navigation to next page
    nextPage() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const CarScreen(),
        ),
      );
    }

    return Scaffold(
      backgroundColor: CustomColors.oxFF000000,

      /// # first page app bar
      appBar: AppBar(
          centerTitle: true,
          title: const Image(image: CustomImages.teslaGrey),
          backgroundColor: CustomColors.oxFF000000),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 45),

            /// #title : tesla
            Center(
                child: Text(CustomStrings.tesla, style: CustomFonts.styleTwo)),

            /// #title : modelY
            Center(
                child: Text(CustomStrings.modelY, style: CustomFonts.styleOne)),

            /// #background image for first page
            const Image(image: CustomImages.teslaHomePageBackground),

            /// #description about tesla
            const DescriptionWidget(
                text1: CustomStrings.headerLeftText,
                text2: CustomStrings.subLeftText,
                text3: CustomStrings.headerRightText,
                text4: CustomStrings.subRightText),

            const SizedBox(height: 50),

            /// #acceleration
            const WidgetRichText(
              text1: CustomStrings.richText1,
              text2: CustomStrings.richText2,
            ),

            /// #top Speed
            const WidgetRichText(
              text1: CustomStrings.richText3,
              text2: CustomStrings.richText4,
            ),

            const SizedBox(height: 30),

            /// #button order now
            ButtonWidget(
                text: CustomStrings.textButtonOrderNow, function: nextPage),

            const SizedBox(height: 25)
          ],
        ),
      ),
    );
  }
}
