import 'dart:math';

import 'package:flutter/material.dart';
import 'package:shadows_style/main.dart';

class WhiteMode extends StatefulWidget {
  const WhiteMode({super.key});

  @override
  State<WhiteMode> createState() => _WhiteModeState();
}

class _WhiteModeState extends State<WhiteMode> {
  bool isTapped = true;
  bool x = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe0e5ec),
      body: Stack(
        alignment: Alignment(0.8, -0.8),
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                /// Qavariq tekis to'rtburchak
                child: isTapped
                    ? GestureDetector(
                        onTap: () {
                          isTapped = !isTapped;
                          setState(() {});
                        },
                        child: Container(
                          height: 200,
                          width: 350,
                          decoration: const BoxDecoration(
                            color: Color(0xffe0e5ec),
                            borderRadius: BorderRadius.all(
                              Radius.circular(26),
                            ),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(-28, -28),
                                  blurRadius: 55,
                                  color: Color(0xffffffff)),
                              BoxShadow(
                                  offset: Offset(28, 28),
                                  blurRadius: 55,
                                  //0xffffffff
                                  color: Color(0xffa8acb1)),
                            ],
                          ),
                        ),
                      )
                    : ClipRRect(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(26),
                        ),
                        child: GestureDetector(
                          onTap: () {
                            isTapped = !isTapped;
                            setState(() {});
                          },
                          child: Container(
                            height: 200,
                            width: 350,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(26),
                              ),
                              boxShadow: [
                                const BoxShadow(
                                    offset: Offset(-28, -28),
                                    blurRadius: 55,
                                    color: Color(0xffa8acb1)),
                                const BoxShadow(
                                    offset: Offset(28, 28),
                                    spreadRadius: -14,
                                    blurRadius: 55,
                                    color: Color(0xffffffff)),
                                BoxShadow(
                                    offset: const Offset(0, 0),
                                    spreadRadius: -14,
                                    blurRadius: 55,
                                    color: Color.lerp(const Color(0xffa8acb1),
                                        const Color(0xffffffff), 0.7)!),
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
                      color: Color(0xffe0e5ec),
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(7, 7),
                          blurRadius: 14,
                          color: Color(0xffa8acb1),
                        ),
                        BoxShadow(
                            offset: Offset(-7, -7),
                            blurRadius: 14,
                            color: Color(0xffffffff))
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
                                color: Color(0xffa8acb1),
                                offset: Offset(-7, -7),
                                blurRadius: 15,
                                spreadRadius: -7),
                            BoxShadow(
                                color: Color(0xffffffff),
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
                            colors: [Color(0xfff0f5fd), Color(0xffcaced4)],
                            transform: GradientRotation(pi * 35 / 180)),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0xffffffff),
                            offset: Offset(-7, -7),
                            blurRadius: 14,
                          ),
                          //0xffffffff
                          BoxShadow(
                            color: Color(0xffa8acb1),
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
            activeTrackColor: Colors.blueGrey,
            inactiveThumbColor: Colors.blueGrey.shade600,
            inactiveTrackColor: Colors.grey.shade400,
            splashRadius: 70.0,
            // boolean variable value
            value: x,
            // changes the state of the switch
            onChanged: (value) {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
