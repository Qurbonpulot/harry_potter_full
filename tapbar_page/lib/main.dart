// import 'package:flutter/cupertino.dart';
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
//   void navigatePage(int page){
//     controller.jumpToPage(page);
//     onChangePage(page);
//   }
//   void onChangePage(int page){
//     currentIndex = page;
//   }
//   int currentIndex = 0;
//   final controller = PageController(
//     initialPage: 3,
//   );
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: PageView(
//         controller: controller,
//         scrollDirection: Axis.horizontal,
//         reverse: false,
//         pageSnapping: true,
//         allowImplicitScrolling: false,
//         scrollBehavior: const CupertinoScrollBehavior(),
//         padEnds: false,
//         children: const [Home(), Search(), Profile(), End()],
//         onPageChanged: (value) {
//           currentIndex = value;
//           setState(() {});
//         },
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         onTap: (value) {
//           currentIndex = value;
//           controller.jumpToPage(value);
//           setState(() {});
//         },
//         currentIndex: currentIndex,
//         items: const [
//           BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.home,
//                 color: Colors.black87,
//               ),
//               label: "Home"),
//           BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.search,
//                 color: Colors.black87,
//               ),
//               label: "Search"),
//           BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.account_box_rounded,
//                 color: Colors.black87,
//               ),
//               label: "Profile"),
//           // BottomNavigationBarItem(
//           //     icon: Icon(
//           //       Icons.pin_end,
//           //       color: Colors.black87,
//           //     ),
//           //     label: "End"),
//         ],
//       ),
//     );
//   }
// }
//
// class Home extends StatelessWidget {
//   const Home({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     debugPrint("build home");
//     return const Scaffold(
//       backgroundColor: Colors.cyan,
//       body: Center(
//         child: Text("Home"),
//       ),
//     );
//   }
// }
//
// class Search extends StatelessWidget {
//   const Search({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     debugPrint("build Search");
//     return const Scaffold(
//       backgroundColor: Colors.cyan,
//       body: Center(
//         child: Text("Search"),
//       ),
//     );
//   }
// }
//
// class Profile extends StatelessWidget {
//   const Profile({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     debugPrint("build Profile");
//     return const Scaffold(
//       backgroundColor: Colors.cyan,
//       body: Center(
//         child: Text("Profile"),
//       ),
//     );
//   }
// }
//
// class End extends StatelessWidget {
//   const End({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     debugPrint("build End");
//     return const Scaffold(
//       backgroundColor: Colors.cyan,
//       body: Center(
//         child: Text("End"),
//       ),
//     );
//   }
// }
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// void main() => runApp(const App());
//
// class App extends StatelessWidget {
//   const App({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: Main(),
//     );
//   }
// }
//
// class Main extends StatefulWidget {
//   const Main({Key? key}) : super(key: key);
//
//   @override
//   State<Main> createState() => _MainState();
// }
//
// class _MainState extends State<Main> {
//   final controller = PageController(initialPage: 0);
//   int index = 0;
//
//   void navigatePage(int page) {
//     controller.jumpToPage(page);
//     onPageChange(page);
//   }
//
//   void onPageChange(int page) {
//     index = page;
//     setState(() {});
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: PageView(
//         controller: controller,
//         scrollDirection: Axis.horizontal,
//         reverse: false,
//         pageSnapping: true,
//         allowImplicitScrolling: false,
//         scrollBehavior: const MaterialScrollBehavior(),
//         padEnds: true,
//         physics: const NeverScrollableScrollPhysics(),
//         onPageChanged: onPageChange,
//         children: const [
//           Home(),
//           Search(),
//           Profile(),
//         ],
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: index,
//         items: const [
//           BottomNavigationBarItem(
//               icon: Icon(CupertinoIcons.home), label: "Home"),
//           BottomNavigationBarItem(
//               icon: Icon(CupertinoIcons.search), label: "Search"),
//           BottomNavigationBarItem(
//               icon: Icon(CupertinoIcons.profile_circled), label: "Profile"),
//         ],
//         onTap: navigatePage,
//       ),
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
// class _HomeState extends State<Home> with AutomaticKeepAliveClientMixin{
//   List<bool>check = [for(int i = 0; i < Colors.primaries.length; i ++ )false];
//   @override
//   Widget build(BuildContext context) {
//     debugPrint("Build: Home");
//     return Scaffold(
//       body: ListView.builder(
//         itemCount: Colors.primaries.length,
//         itemBuilder: (context, i) {
//           return Card(
//             shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
//             margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//             child: ListTile(
//               leading: Icon(
//                 Icons.account_circle,
//                 color: Colors.primaries[i],
//                 size: 40,
//               ),
//               title: Text("User ${i + 1}"),
//               subtitle: Text("Id: ${Colors.primaries[i].value}"),
//               trailing: Checkbox(value: check[i],onChanged: (value) {
// check[i] = !check[i];
// setState(() {
// });
//               },),
//             ),
//           );
//         },
//       ),
//     );
//   }
//
//   @override
//   // TODO: implement wantKeepAlive
//   bool get wantKeepAlive => true;
// }
//
// class Search extends StatelessWidget {
//   const Search({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     debugPrint("Build: Search");
//     return const Scaffold(
//       backgroundColor: Colors.teal,
//       body: Center(child: Text("Search")),
//     );
//   }
// }
//
// class Profile extends StatelessWidget {
//   const Profile({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     debugPrint("Build: Profile");
//     return const Scaffold(
//       backgroundColor: Colors.orange,
//       body: Center(child: Text("Profile")),
//     );
//   }
// }
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  return runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Main(),
    );
  }
}

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);
  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
@override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(CupertinoIcons.home),text: "Home",),
              Tab(icon: Icon(CupertinoIcons.profile_circled),text: "profile",),
              Tab(icon: Icon(CupertinoIcons.search),text: "search",)
            ],
          ),
        ),
        body: TabBarView(
          children: [Home(), Profile(), Search()],
        ),
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    debugPrint("Build: Home");
    return Scaffold(
      body: ListView.builder(
        addRepaintBoundaries: true,
        addAutomaticKeepAlives: true,
        itemCount: Colors.primaries.length,
        itemBuilder: (context, i) => WidgetItem(i: i),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint("Build: Search");
    return const Scaffold(
      backgroundColor: Colors.teal,
      body: Center(child: Text("Search")),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint("Build: Profile");
    return const Scaffold(
      backgroundColor: Colors.orange,
      body: Center(child: Text("Profile")),
    );
  }
}

class WidgetItem extends StatefulWidget {
  final int i;

  const WidgetItem({Key? key, required this.i}) : super(key: key);

  @override
  State<WidgetItem> createState() => _WidgetItemState();
}

class _WidgetItemState extends State<WidgetItem>
    with AutomaticKeepAliveClientMixin {
  bool check = false;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Card(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8))),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        leading: Icon(
          Icons.account_circle,
          color: Colors.primaries[widget.i],
          size: 40,
        ),
        title: Text("User ${widget.i + 1}"),
        subtitle: Text("Id: ${Colors.primaries[widget.i].value}"),
        trailing: Checkbox(
          value: check,
          onChanged: (value) {
            check = !check;
            setState(() {});
          },
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
