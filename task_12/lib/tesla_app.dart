import 'package:flutter/material.dart';

import 'screens/model_y.dart';
class TeslaApp extends StatelessWidget {
  const TeslaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home:ModelY() ,
    );
  }
}
