// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const App());
// }
//
// class App extends StatelessWidget {
//   const App({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: Home(),
//     );
//   }
// }
//
// class Home extends StatefulWidget {
//   const Home({Key? key}) : super(key: key);
//
//   @override
//   State<Home> createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold();
//   }
// }

import 'package:flutter/material.dart';
import 'package:http/http.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String text = 'No Data';

  @override
  void initState() {
    super.initState();
    getDataFromNetwork();
  }

  void getDataFromNetwork() {
    get(Uri.parse("https://api.spacexdata.com/v3/dragons"))
        .then((response) {
      text = response.body;
      setState(() {});
    }).catchError((error) {
      text = "Error: $error";
      setState(() {});
    }).whenComplete(() {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Process Completed!"),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
