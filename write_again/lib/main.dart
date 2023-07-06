// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "Flutter Demo",
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//           colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//           useMaterial3: true),
//       home: const HomeScreen(),
//     );
//   }
// }
//
// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});
//
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   double myOffset = 0;
//   late final ScrollController scrollController;
//
//   @override
//   void initState() {
//     scrollController =
//         ScrollController(initialScrollOffset: 0, debugLabel: "My Controller");
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: ListView.builder(
//         controller: scrollController,
//         itemCount: 32,
//         itemBuilder: (context, index) {
//           return Padding(
//             padding: EdgeInsets.all(8),
//             child: Container(
//               color: Colors.blue,
//               child: ListTile(
//                 title: Text("jellkdk ${index++}"),
//                 onTap: () {
//                   scrollController.animateTo(myOffset,
//                       duration: Duration(milliseconds: 600),
//                       curve: Curves.linear);
//                   myOffset += 150;
//                 },
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// void main() => runApp(const MyApp());
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
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
//   const Home({super.key});
//
//   @override
//   State<Home> createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
//   final List<String> list = [];
//   final controller = ScrollController();
//
//   void add() {
//     list.add("Account : ${list.length} ");
//     setState(
//       () {},
//     );
//     controller.animateTo(controller.position.maxScrollExtent,
//         duration: Duration(milliseconds: 600), curve: Curves.linear);
//   }
//
//   void remove() {
//     list.remove("Account : ${list.length} ");
//     setState(
//       () {},
//     );
//     controller.animateTo(controller.position.maxScrollExtent,
//         duration: Duration(milliseconds: 600), curve: Curves.linear);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView.builder(
//         controller: controller,
//         itemCount: list.length,
//         itemBuilder: (context, index) {
//           return Card(
//             child: ListTile(
//               leading: Icon(
//                 CupertinoIcons.profile_circled,
//                 color: Colors.accents[index % Colors.accents.length],
//               ),
//               trailing: IconButton(icon: Icon(CupertinoIcons.delete),onPressed: remove,),
//               subtitle: Text("${DateTime.now().hour} : ${DateTime.now().minute}"),
//             ),
//           );
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: add,
//         backgroundColor: Colors.blue,
//
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(App());
// }
//
// class App extends StatelessWidget {
//   const App({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         useMaterial3: true,
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//       ),
//       home: Home(),
//     );
//   }
// }
//
// class Home extends StatefulWidget {
//   const Home({super.key});
//
//   @override
//   State<Home> createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
//

  ///#snapshot 1 controller
  //final controller = PageController(initialPage: 1,viewportFraction: 0.75);



  ///#snapshot 2 controller
  // final controller = PageController(initialPage: 0);
  // int index = 0;


  ///#snapshot3 controller
  // final controller = PageController(initialPage: 0);
  // int index = 0;
  //
  // void navigatePage(int page){
  //   controller.jumpToPage(page);
  //   onChangePage(page);
  // }
  //
  // void onChangePage(int page){
  //   index = page;
  //   setState(() {});
  // }
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(


      ///# snapshot 1
      // body: PageView(
      //   controller: controller,
      //   scrollDirection: Axis.horizontal,
      //   reverse: false,
      //   pageSnapping: true,
      //   allowImplicitScrolling: false,
      //   scrollBehavior: MaterialScrollBehavior(),
      //   padEnds: false,
      //   children: [
      //     Container(color: Colors.cyan,),
      //     Container(color: Colors.blueAccent,),
      //     Container(color: Colors.green,)
      //   ],
      // ),



      ///# snapshot 2
      // body: DefaultTextStyle(
      //   style: const TextStyle(
      //       color: Colors.white, fontWeight: FontWeight.bold, fontSize: 35),
      //   child: PageView(
      //     controller: controller,
      //     onPageChanged: (page) {
      //       index = page;
      //       setState(() {});
      //     },
      //     children: [
      //       Container(color: Colors.blue),
      //       Container(color: Colors.green),
      //       Container(color: Colors.red),
      //     ],
      //   ),
      // ),
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: index,
      //   items: [
      //     BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
      //     BottomNavigationBarItem(icon: Icon(Icons.production_quantity_limits),label: "Product"),
      //     BottomNavigationBarItem(icon: Icon(Icons.hub),label: "hub"),
      //   ],
      //   onTap: (page) {
      //     index = page;
      //     controller.jumpToPage(page);
      //     setState(() {
      //
      //     });
      //   },
      // ),

//
//
//     );
//   }
// }
//









// import 'dart:math';
// import 'dart:ui';
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
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
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
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     // return Scaffold(
//     //   backgroundColor: const Color(0xffe0e0e0),
//     //   body: Center(
//     //     child: Container(
//     //       alignment: Alignment.center,
//     //       height: 250,
//     //       width: 250,
//     //       decoration: const BoxDecoration(
//     //         // color: Color(0xffe0e0e0),
//     //         gradient: LinearGradient(colors: [
//     //           Color(0xfff0f0f0),  Color(0xffcacaca),
//     //
//     //         ],
//     //          transform: GradientRotation(pi * 35 / 180)
//     //          //
//     //          //  begin: Alignment.topLeft,
//     //          //  end: Alignment.bottomRight
//     //         ),
//     //         borderRadius: BorderRadius.all(
//     //           Radius.circular(50),
//     //         ),
//     //         boxShadow: [
//     //           BoxShadow(
//     //               offset: Offset(20, 20),
//     //               blurRadius: 60,
//     //               color: Color(0xffbebebe),),
//     //           BoxShadow(
//     //             offset: Offset(-20, -20),
//     //             blurRadius: 60,
//     //             color: Color(0xffffffff),
//     //           )
//     //         ],
//     //       ),
//     //       child: const Text('Buy me a coffee'),
//     //     ),
//     //   ),
//     // );
//     // return Scaffold(
//     //   backgroundColor: Color(0xffe0e0e0),
//     //   body: Center(
//     //     child: ClipRRect(
//     //       borderRadius: BorderRadius.circular(25),
//     //       child: Container(
//     //         height: 250,
//     //         width: 250,
//     //         decoration: BoxDecoration(
//     //           borderRadius: BorderRadius.circular(25),
//     //             boxShadow: [
//     //           BoxShadow(
//     //               blurRadius: 60,
//     //               color: Color(0xffbebebe),
//     //               // blurStyle: BlurStyle.inner
//     //               // blurStyle: BlurStyle.outer
//     //               offset: Offset(-20, -20),
//     //               spreadRadius: -20,
//     //           ),
//     //           BoxShadow(
//     //          blurRadius: 60,
//     //             color: Color(0xffffffff),
//     //             // blurStyle: BlurStyle.inner
//     //             // blurStyle: BlurStyle.outer
//     //             offset: Offset(20, 20),
//     //             spreadRadius: -20,
//     //           ),
//     //           BoxShadow(
//     //            blurRadius: 60,
//     //             color: Color.lerp(Color(0xffbebebe), Color(0xffffffff), 0.5)!,
//     //             // blurStyle: BlurStyle.inner
//     //             // blurStyle: BlurStyle.outer
//     //             spreadRadius: -35,
//     //           )
//     //         ]),
//     //       ),
//     //     ),
//     //   ),
//     // );
//     return Scaffold(
//       // body: Center(
//       //   child: Container(
//       //     decoration: BoxDecoration(
//       //       gradient: RadialGradient(
//       //         center: Alignment(0,0),
//       //         focal: Alignment.centerRight,
//       //         radius: 0.5,
//       //         //tileMode: TileMode.repeated,
//       //         colors: [Colors.yellow, Colors.black],
//       //       ),
//       //     ),
//       //   ),
//       // ),
//
//       body: Stack(
//         children: [
//           Container(
//             decoration: const BoxDecoration(
//               gradient: RadialGradient(
//                 center: Alignment.topLeft,
//                 radius: 1.4,
//                 //tileMode: TileMode.repeated,
//                 colors: [Colors.yellow, Colors.blueAccent],
//               ),
//             ),
//           ),
//           const Center(
//             child: Text(
//               "Glassmorphism",
//               style: TextStyle(
//                   fontSize: 45,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white),
//             ),
//           ),
//           Center(
//             child: Transform.rotate(
//
//               angle: 0.3,
//               child: SizedBox(
//                 height: 80,
//                 width: 320,
//                 child: Container(
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(20),
//                       boxShadow: [
//                         BoxShadow(
//                             color: Colors.black.withOpacity(0.1),
//                             blurRadius: 30,
//                             offset: const Offset(0, 4))
//                       ]),
//                   clipBehavior: Clip.antiAlias,
//                   child: BackdropFilter(
//                     filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
//                     child: Container(
//                       decoration: BoxDecoration(
//                           color: Colors.white.withOpacity(0.14),
//                           borderRadius: BorderRadius.circular(20),
//                           border:
//                               Border.all(color: Colors.white.withOpacity(0.55))),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }


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

//
// import 'dart:ui';
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
//       body: Stack(
//         children: [
//           Container(
//             decoration: const BoxDecoration(
//                 gradient: RadialGradient(
//                     colors: [Colors.yellowAccent, Colors.blueAccent],
//                     center: Alignment.topLeft,
//                     radius: 1.75,
//                     tileMode: TileMode.clamp)),
//           ),
//           const Center(
//             child: Text(
//               "Glassmorphism",
//               style: TextStyle(
//                   fontSize: 45,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white),
//             ),
//           ),
//           Center(
//             child: Transform.rotate(
//               angle: -0.4,
//               child: SizedBox(
//                 height: 150,
//                 width: 300,
//                 child: Container(
//                   clipBehavior: Clip.antiAlias,
//                   decoration: BoxDecoration(
//                     borderRadius: const BorderRadius.all(
//                       Radius.circular(20),
//                     ),
//                     boxShadow: [
//                       BoxShadow(
//                           color: Colors.black.withOpacity(0.1),
//                           offset: const Offset(0, 4),
//                           blurRadius: 30)
//                     ],
//                   ),
//                   child: BackdropFilter(
//                     filter: ImageFilter.blur(sigmaY: 2.1, sigmaX: 2.1),
//                     child: Container(
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(20),
//                         border: Border.all(
//                           color: Colors.white.withOpacity(0.55),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }


//
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
//   late final PageController controller;
//
//   int selectedIndex = 0;
//   int lastPage = 0;
//
//   final buttons = [
//     "1. Car",
//     "2. Exterior",
//     "3. Interior",
//     "4. Autopilot",
//   ];
//
//   @override
//   void initState() {
//     super.initState();
//     controller = PageController();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         bottom: PreferredSize(
//           preferredSize: Size(MediaQuery.sizeOf(context).width, 60),
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 for (int i = 0; i < buttons.length; i++)
//                   GestureDetector(
//                     onTap: () {
//                       if(i <= lastPage) {
//                         selectedIndex = i;
//                         setState(() {});
//                         controller.jumpToPage(i);
//                       }
//                     },
//                     child: Column(
//                       children: [
//                         Text(
//                           buttons[i],
//                           style: (lastPage >= i)
//                               ? const TextStyle(
//                             color: Colors.black,
//                             fontWeight: FontWeight.w500,
//                             fontSize: 16,
//                           )
//                               : const TextStyle(
//                             color: Colors.grey,
//                             fontSize: 16,
//                           ),
//                         ),
//                         Container(
//                           margin: const EdgeInsets.only(top: 15),
//                           height: 2,
//                           width: buttons[i].length * 7,
//                           color: (selectedIndex == i)
//                               ? Colors.red
//                               : Colors.transparent,
//                         )
//                       ],
//                     ),
//                   )
//               ],
//             ),
//           ),
//         ),
//       ),
//       body: PageView(
//         controller: controller,
//         physics: const NeverScrollableScrollPhysics(),
//         children: [
//           // 0
//           Container(
//             alignment: Alignment.center,
//             color: Colors.yellowAccent,
//             child: ElevatedButton(
//               onPressed: () {
//                 selectedIndex = 1;
//                 lastPage = 1;
//                 setState(() {});
//                 controller.jumpToPage(1);
//               },
//               child: Text(buttons[0]),
//             ),
//           ),
//
//           // 1
//           Container(
//             alignment: Alignment.center,
//             color: Colors.tealAccent,
//             child: ElevatedButton(
//               onPressed: () {
//                 selectedIndex = 2;
//                 lastPage = 2;
//                 setState(() {});
//                 controller.jumpToPage(2);
//               },
//               child: Text(buttons[1]),
//             ),
//           ),
//
//           // 2
//           Container(
//             alignment: Alignment.center,
//             color: Colors.pinkAccent,
//             child: ElevatedButton(
//               onPressed: () {
//                 selectedIndex = 3;
//                 lastPage = 3;
//                 setState(() {});
//                 controller.jumpToPage(3);
//               },
//               child: Text(buttons[2]),
//             ),
//           ),
//
// // 3
//           Container(
//             alignment: Alignment.center,
//             color: Colors.blueAccent,
//             child: ElevatedButton(
//               onPressed: () {
//                 ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Tamam")));
//               },
//               child: Text(buttons[3]),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

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
  late final PageController controller;

  int selectedIndex = 0;
  int lastPage = 0;

  final buttons = [
    "1. Car",
    "2. Exterior",
    "3. Interior",
    "4. Autopilot",
  ];

  @override
  void initState() {
    super.initState();
    controller = PageController();
  }

  void onTapTab(int i) {
    if (i <= lastPage) {
      selectedIndex = i;
      setState(() {});
      controller.jumpToPage(i);
    }
  }

  void onPressButton(int i) {
    selectedIndex = i;
    lastPage = lastPage < i ? i : lastPage;
    setState(() {});
    controller.jumpToPage(selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: Size(MediaQuery.sizeOf(context).width, 60),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                for (int i = 0; i < buttons.length; i++)
                  TabBarButton(
                    onPressed: () => onTapTab(i),
                    text: buttons[i],
                    i: i,
                    selectedIndex: selectedIndex,
                    lastPage: lastPage,
                  ),
              ],
            ),
          ),
        ),
      ),
      body: PageView(
        controller: controller,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          // 0
          PageOne(
              onPressed: () => onPressButton(1),
              color: Colors.yellowAccent,
              text: buttons[0]),

          // 1
          PageOne(
              onPressed: () => onPressButton(2),
              color: Colors.tealAccent,
              text: buttons[1]),

          // 2
          PageOne(
              onPressed: () => onPressButton(3),
              color: Colors.pinkAccent,
              text: buttons[2]),

          // 3
          PageOne(
            color: Colors.blueAccent,
            text: buttons[3],
            onPressed: () {
              ScaffoldMessenger.of(context)
                  .showSnackBar(const SnackBar(content: Text("Tamam")));
            },
          ),
        ],
      ),
    );
  }
}

class TabBarButton extends StatelessWidget {
  final void Function()? onPressed;
  final int lastPage;
  final int selectedIndex;
  final int i;
  final String text;
  const TabBarButton({Key? key, this.onPressed, required this.lastPage, required this.selectedIndex, required this.text, required this.i}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onPressed,
      child: Column(
        children: [
          Text(
            text,
            style: (i <= lastPage)
                ? const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 16,
            )
                : const TextStyle(
              color: Colors.grey,
              fontSize: 16,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 15),
            height: 2,
            width: text.length * 7,
            color: (selectedIndex == i)
                ? Colors.red
                : Colors.transparent,
          )
        ],
      ),
    );
  }
}



class PageOne extends StatefulWidget {
  final void Function()? onPressed;
  final Color color;
  final String text;
  const PageOne(
      {Key? key,
        required this.onPressed,
        required this.color,
        required this.text})
      : super(key: key);

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: widget.color,
      child: ElevatedButton(
        onPressed: widget.onPressed,
        child: Text(widget.text),
      ),
    );
  }
}