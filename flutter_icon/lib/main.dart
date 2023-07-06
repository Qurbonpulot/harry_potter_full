import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF242C3B),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              width: 300,
              height: 500,
              color: const Color(0xFF37B6E9),
            ),
          ),
          Center(
            child: Stack(
              children: [
                const Text(
                  'Glass',
                  style: TextStyle(color: Colors.white),
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    ClipPath(
                      clipper: Clipper(),
                      child: Container(
                        height: 200,
                        width: 350,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              const Color(0xFFFFFFFF).withOpacity(0.3),
                              const Color(0xFF000000).withOpacity(0.3),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.centerRight,
                          ),
                        ),
                      ),
                    ),
                    BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
                      child: ClipPath(
                        clipBehavior: Clip.antiAlias,
                        clipper: Clipper(),
                        child: Container(
                          height: 195,
                          width: 345,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                const Color(0xFF353F54).withOpacity(0.95),
                                const Color(0xFF222834).withOpacity(0.95),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Clipper extends CustomClipper<Path> {
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
