import 'package:flutter/material.dart';
import 'package:to_do_app/pages/home_page.dart';
import 'package:to_do_app/pages/put_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(useMaterial3: true),
      darkTheme: ThemeData.dark(useMaterial3: true),
      themeMode: ThemeMode.dark,
      routes: {
        "/put" : (context) => const EditPost()
      },
      debugShowCheckedModeBanner: false,
      home: const Home(),
    );
  }
}
