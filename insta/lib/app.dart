import 'package:flutter/material.dart';
import 'package:insta/pages/edit.dart';
import 'package:insta/pages/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(useMaterial3: true),
      themeMode: ThemeMode.dark,
      home: const HomePage(),
    );
  }
}
