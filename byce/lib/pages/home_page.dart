import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selection = 0;
  final List<Widget> elements = [
    Text(
      "All",
      style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontFamily: "Poppins"),
    ),
    Image.asset("assets/icons/ic_battery.png"),
    Image.asset("assets/icons/ic_road.png"),
    Image.asset("assets/icons/ic_mountain.png"),
    Image.asset("assets/icons/ic_case.png")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff242C3B),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        forceMaterialTransparency: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        title: const Text(
          "Choose your bike",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
              fontFamily: "Poppins"),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(top: 10),
            alignment: Alignment.center,
            height: 45,
            width: 45,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                gradient: LinearGradient(colors: [
                  Color(0xff37B6E9),
                  Color(0xff4B4CED),
                ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
            child: Image.asset("assets/icons/ic_search.png"),
          ),
          const SizedBox(
            width: 15,
          ),
        ],
        flexibleSpace: ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 7, sigmaY: 7),
            child: Container(
              color: Colors.transparent,
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          ClipPath(
            clipper: MyFirstClip(),
            child: Container(
              margin: const EdgeInsets.only(top: 10),
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                Color(0xff37B6E9),
                Color(0xff4B4CED),
              ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 15, right: 15, bottom: 15, top: 100),
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      ClipPath(
                        clipBehavior: Clip.antiAlias,
                        clipper: MySecondClipper(),
                        child: Container(
                          height: 243,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                                  Colors.white.withOpacity(0.2),
                                  Colors.black.withOpacity(0.2),
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight),
                          ),
                        ),
                      ),
                      ClipPath(
                        clipBehavior: Clip.antiAlias,
                        clipper: MySecondClipper(),
                        child: Container(
                          height: 240,
                          width: MediaQuery.sizeOf(context).width - 33,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFF353F54),
                                Color(0xFF222834),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                          ),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaY: 60, sigmaX: 60),
                            child: Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.only(top: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset("assets/images/img_bike1.png"),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text(
                                    "30% off",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "Poppins",
                                        fontSize: 26,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        for (int i = 0; i < elements.length; i++)
                          Padding(
                            padding: EdgeInsets.only(bottom: i * 15),
                            child: ElementsContainer(
                              function: () {
                                selection = i;
                                setState(() {

                                });
                              },
                                select: i,
                                selection: selection,
                                child: elements[i]),
                          )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            //asljximxok
                            //adxkjsdklx
                            //ksxxlx,
                            MiniInfo(
                                image:
                                    Image.asset("assets/images/img_bike2.png"),
                                text1: "Road Bike",
                                text2: "\nPEUGEOT-LR01",
                                text3: "\n\$99,999.99"),
                            const SizedBox(height: 5),
                            MiniInfo(
                                image:
                                    Image.asset("assets/images/img_bike2.png"),
                                text1: "Road Bike",
                                text2: "\nPEUGEOT-LR01",
                                text3: "\n\$99,999.99"),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            MiniInfo(
                                image:
                                    Image.asset("assets/images/img_bike2.png"),
                                text1: "Road Bike",
                                text2: "\nPEUGEOT-LR01",
                                text3: "\n\$99,999.99"),
                            const SizedBox(
                              height: 5,
                            ),
                            MiniInfo(
                                image:
                                    Image.asset("assets/images/img_bike2.png"),
                                text1: "Road Bike",
                                text2: "\nPEUGEOT-LR01",
                                text3: "\n\$99,999.99"),
                            const SizedBox(height: 60)
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ClipPath(
                clipper: LastClipper(),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFF353F54).withOpacity(0.8),
                        Color(0xFF222834).withOpacity(0.8),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  height: 80,
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaY: 8, sigmaX: 8),
                    child: Container(),
                  ),
                )),
          ),
          Align(
            alignment: Alignment.bottomCenter,
          )
        ],
      ),
    );
  }
}

class LastClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double x = size.width;
    double y = size.height;
    Path path = Path()
      ..moveTo(0, 0.3 * y)
      ..lineTo(x, 0)
      ..lineTo(x, y)
      ..lineTo(0, y)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class MiniInfo extends StatelessWidget {
  final Image image;
  final String text1;
  final String text2;
  final String text3;
  const MiniInfo({
    super.key,
    required this.image,
    required this.text1,
    required this.text2,
    required this.text3,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ClipPath(
          clipBehavior: Clip.antiAlias,
          clipper: MyThirdClipper(),
          child: Container(
            height: 242,
            width: 162,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.white.withOpacity(0.2),
                Colors.black.withOpacity(0.2),
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            ),
          ),
        ),
        ClipPath(
          clipBehavior: Clip.antiAlias,
          clipper: MyThirdClipper(),
          child: Container(
            height: 240,
            width: 160,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF353F54), Color(0xFF222834)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: BackdropFilter(
                filter: ImageFilter.blur(sigmaY: 90, sigmaX: 90),
                child: Container(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Image.asset(
                            "assets/icons/ic_blue_eart.png",
                            scale: 0.8,
                          )
                        ],
                      ),
                      image,
                      const SizedBox(height: 10),
                      RichText(
                        text: TextSpan(
                            text: text1,
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.6),
                                fontWeight: FontWeight.bold,
                                fontFamily: "Poppins"),
                            children: [
                              TextSpan(
                                text: text2,
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                              TextSpan(text: text3)
                            ]),
                      ),
                    ],
                  ),
                )),
          ),
        ),
      ],
    );
  }
}


class MyFirstClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double x = size.width;
    double y = size.height;
    Path path = Path()
      ..moveTo(0.8 * x, 0.15 * y)
      ..lineTo(x, 0.25 * y)
      ..lineTo(x, y)
      ..lineTo(0, y)
      ..lineTo(0, 0.95 * y)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class MySecondClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;
    Path path = Path()
      ..arcTo(Rect.fromCircle(center: const Offset(30, 30), radius: 30), pi,
          pi / 2, false)
      ..lineTo(width - 30, 0)
      ..arcTo(Rect.fromCircle(center: Offset(width - 30, 30), radius: 30),
          -pi / 2, pi / 2, false)
      ..lineTo(width, height - 60)
      ..arcTo(
          Rect.fromCircle(center: Offset(width - 30, height - 60), radius: 30),
          0,
          pi / 2,
          false)
      ..lineTo(30, height)
      ..arcTo(Rect.fromCircle(center: Offset(30, height - 30), radius: 30),
          pi / 2, pi / 2, false)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class MyThirdClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;
    Path path = Path()
      ..arcTo(Rect.fromCircle(center: const Offset(30, 50), radius: 30), pi,
          pi / 2, false)
      ..lineTo(width - 30, 0)
      ..arcTo(Rect.fromCircle(center: Offset(width - 30, 30), radius: 30),
          -pi / 2, pi / 2, false)
      ..lineTo(width, height - 60)
      ..arcTo(
          Rect.fromCircle(center: Offset(width - 30, height - 50), radius: 30),
          0,
          pi / 2,
          false)
      ..lineTo(30, height)
      ..arcTo(Rect.fromCircle(center: Offset(30, height - 30), radius: 30),
          pi / 2, pi / 2, false)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}


class ElementsContainer extends StatefulWidget {
  void Function()function;
  Widget child;
  int select;
  int selection;
  ElementsContainer({
    super.key,
    required this.function,
    required this.child,
    required this.select,
    required this.selection,
  });

  @override
  State<ElementsContainer> createState() => _ElementsContainerState();
}

class _ElementsContainerState extends State<ElementsContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 52,
      width: 52,
      decoration: BoxDecoration(
          gradient: widget.selection != widget.select?
               LinearGradient(colors: [
            Colors.white.withOpacity(0.2),
            Colors.black.withOpacity(0.2),
          ], begin: Alignment.topLeft, end: Alignment.bottomRight)
              : null,
          borderRadius: BorderRadius.circular(8),
          color: widget.selection == widget.select? Colors.orange : null),
      child: GestureDetector(
        onTap:widget.function,
        child: Container(
          alignment: Alignment.center,
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            gradient:LinearGradient(
              colors: [
                const Color(0xFF353F54).withOpacity(0.8),
                const Color(0xFF222834).withOpacity(0.8),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: widget.child,
        ),
      ),
    );
  }
}