
import 'package:byce/pages/home_page.dart';
import 'package:flutter/material.dart';

class Bike extends StatelessWidget {
  const Bike({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}