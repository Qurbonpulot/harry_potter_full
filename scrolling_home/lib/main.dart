// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
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
//   const MyHomePage({super.key});
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   double offset = 0;
//   final controller = ScrollController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: CustomScrollView(
//         controller: controller,
//         slivers: [
//           for (int i = 0; i < Colors.primaries.length; i++)
//             SliverToBoxAdapter(
//               child: Container(
//                 height: 150,
//                 color: Colors.primaries[i],
//                 margin: const EdgeInsets.all(5),
//               ),
//             )
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           if (controller.position.extentBefore <
//               controller.position.maxScrollExtent - 200) {
//             controller.animateTo(offset,
//                 duration: const Duration(milliseconds: 200),
//                 curve: Curves.linear);
//
//             offset += 200;
//           } else {
//             controller.jumpTo(0);
//             offset = 0;
//           }
//         },
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
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
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double offset = 0;
  final controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: controller,
        slivers: [
          for (int i = 0; i < Colors.primaries.length; i++)
            SliverToBoxAdapter(
              child: Container(
                height: 150,
                color: Colors.primaries[i],
                margin: const EdgeInsets.all(5),
              ),
            )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (controller.position.extentBefore <
              controller.position.maxScrollExtent - 200) {
            controller.animateTo(offset,
                duration: const Duration(milliseconds: 200),
                curve: Curves.linear);

            offset += 200;
          } else {
            controller.jumpTo(0);
            offset = 0;
          }
        },
      ),
    );
  }
}
