// import 'dart:math';
//
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({
//     super.key,
//   });
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xffe0e0e0),
//       body: Center(
//         child: Container(
//           height: 250,
//           width: 250,
//           alignment: Alignment.center,
//           decoration: const BoxDecoration(
//               gradient: LinearGradient(colors: [
//                 Color(0xffcacaca),
//                 Color(0xfff0f0f0)
//               ],
//
//               transform: GradientRotation(pi * 35 / 180)),
//               borderRadius: BorderRadius.all(
//                 Radius.circular(25),
//               ),
//               boxShadow: [
//                 BoxShadow(
//                   offset: Offset(20, 20),
//                   blurRadius: 60,
//                   color: Color(0xffbebebe),
//                 ),
//                 BoxShadow(
//                   offset: Offset(-20, -20),
//                   blurRadius: 60,
//                   color: Color(0xffffffff),
//                 ),
//               ]),
//         ),
//       ),
//     );
//   }
// }

//
// import 'dart:math';
//
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({
//     super.key,
//   });
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xffe0e0e0),
//       body: Center(
//         child: ClipRRect(
//           borderRadius: BorderRadius.circular(50),
//           child: Container(
//             clipBehavior: Clip.antiAlias,
//             height: 250,
//             width: 250,
//             alignment: Alignment.center,
//             decoration:  BoxDecoration(
//                 gradient: LinearGradient(colors: [
//                   Color(0xffcacaca),
//                   Color(0xfff0f0f0)
//                 ],
//
//                     transform: GradientRotation(pi * 35 / 180)),
//                 borderRadius: BorderRadius.all(
//                   Radius.circular(50),
//                 ),
//                 boxShadow: [
//                   BoxShadow(
//                     offset: Offset(-20, -20),
//                     blurRadius: 60,
//                     color: Color(0xffbebebe),
//                   ),
//                   BoxShadow(
//                     offset: Offset(20, 20),
//                     blurRadius: 60,
//                     color: Color(0xffffffff),
//                     spreadRadius: -20
//                   ),
//                   BoxShadow(
//                     offset: Offset(0, 0),
//                     blurRadius: 60,
//                     spreadRadius: -20,
//                     color: Color.lerp(const Color(0xffbebebe), const Color(0xffffffff), 0.45)!,
//                   ),
//                 ]),
//           ),
//         ),
//       ),
//     );
//   }
// }

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
      title: 'Flutter Demo',
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
      backgroundColor: const Color(0xffe0e0e0),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                gradient: RadialGradient(
                    colors: [Colors.yellowAccent, Colors.blueAccent],
                    center: Alignment.topLeft,
                    radius: 1.75,
                    tileMode: TileMode.clamp)),
          ),
          const Center(
            child: Text(
              "Glassmorphism",
              style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          Center(
            child: Transform.rotate(
              angle: -0.4,
              child: SizedBox(
                height: 150,
                width: 300,
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          offset: const Offset(0, 4),
                          blurRadius: 30)
                    ],
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaY: 2.1, sigmaX: 2.1),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.white.withOpacity(0.55),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
