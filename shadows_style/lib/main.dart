import 'dart:math';

import 'package:flutter/material.dart';
import 'package:shadows_style/next.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool x = false;
  bool isTapped = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff24272c),
      body: Stack(
        alignment: const Alignment(0.8, -0.8),
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                /// Qavariq tekis to'rtburchak
                child: isTapped ? GestureDetector(
                  onTap: () {
                    isTapped = !isTapped;
                    setState(() {

                    });
                  },
                  child: Container(
                    height: 200,
                    width: 350,
                    decoration: const BoxDecoration(
                      color: Color(0xff24272c),
                      borderRadius: BorderRadius.all(
                        Radius.circular(26),
                      ),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(-28, -28),
                            blurRadius: 55,
                            color: Color(0xff33373e)),
                        BoxShadow(
                            offset: Offset(28, 28),
                            blurRadius: 55,
                            color: Color(0xff15171a))
                      ],
                    ),
                  ),
                ):ClipRRect(
                  borderRadius:const BorderRadius.all(
                    Radius.circular(26),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      isTapped = !isTapped;
                      setState(() {

                      });
                    },
                    child: Container(
                      height: 200,
                      width: 350,
                      decoration:  BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(26),
                        ),
                        boxShadow: [

                          const BoxShadow(
                              offset: Offset(-28, -28),
                              blurRadius: 55,
                              color: Color(0xff15171a)),
                          const BoxShadow(
                              offset: Offset(28, 28),
                              spreadRadius: -14,
                              blurRadius: 55,
                              color: Color(0xff33373e)),
                          BoxShadow(
                              offset: const Offset(0, 0),
                              spreadRadius: -14,
                              blurRadius: 55,
                              color: Color.lerp(const Color(0xff15171a),  const Color(0xff33373e), 0.55)!),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  /// qavariq tekis aylana
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xff202328),
                          Color(0xff272a2f),
                        ],
                        transform: GradientRotation(pi * 35 / 180),
                      ),
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(7, 7),
                          blurRadius: 14,
                          color: Color(0xff0e1012),
                        ),
                        BoxShadow(
                            offset: Offset(-7, -7),
                            blurRadius: 14,
                            color: Color(0xff3a3e46))
                      ],
                    ),
                  ),

                  /// second circular container
                  ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          boxShadow: const [
                            BoxShadow(
                                color: Color(0xff1b1d21),
                                offset: Offset(-7, -7),
                                blurRadius: 15,
                                spreadRadius: -7),
                            BoxShadow(
                                color: Color(0xff2d3137),
                                offset: Offset(7, 7),
                                blurRadius: 15,
                                spreadRadius: -7)
                          ]),
                    ),
                  ),

                  /// third circular container
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        gradient: const LinearGradient(
                            colors: [Color(0xff272a2f), Color(0xff202328)],
                            transform: GradientRotation(pi * 35 / 180)),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0xff2d3137),
                            offset: Offset(-7, -7),
                            blurRadius: 14,
                          ),
                          BoxShadow(
                            color: Color(0xff1b1d21),
                            offset: Offset(7, 7),
                            blurRadius: 14,
                          ),
                        ]),
                  ),
                ],
              )
            ],
          ),
          Switch(
            // thumb color (round icon)
            activeColor: Colors.white,
            activeTrackColor: Colors.lightBlueAccent,
            inactiveThumbColor: Colors.blueGrey.shade600,
            inactiveTrackColor: Colors.grey.shade400,
            splashRadius: 70.0,
            // boolean variable value
            value: x,
            // changes the state of the switch
            onChanged: (value) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const WhiteMode(),
                  ));
            },
          ),
        ],
      ),
    );
  }
}
