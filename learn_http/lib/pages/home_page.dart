import 'package:flutter/material.dart';
import 'package:http/http.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String path = "https://jsonplaceholder.typicode.com/posts";
  String text = "No Data";

  @override
  void initState() {

    super.initState();
    getDataFromKetmon(path);
  }
  void getDataFromKetmon(String path)async{
    Uri url = Uri.parse(path);
    Response response = await get(url);
    if(response.statusCode == 200){
      text = response.body;
      setState(() {
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Learn Networking"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.info_outline),
      ),
      drawer: const Drawer(),
      body:  Center(
        child: Text(text),
      ),
    );
  }
}
//
// import 'package:flutter/material.dart';
// import 'package:http/http.dart';
//
// class NetworkOne extends StatefulWidget {
//   const NetworkOne({super.key});
//
//   @override
//   State<NetworkOne> createState() => _NetworkOneState();
// }
//
// class _NetworkOneState extends State<NetworkOne> {
//   String text = 'No Data';
//
//   /// api
//   final domain = 'jsonplaceholder.typicode.com';
//
//   ///base url
//   final apiPosts = '/posts';
//   final apiUsers = '/users';
//   final String path = 'https://jsonplaceholder.typicode.com/posts';
//   final String path2 = 'https://jsonplaceholder.typicode.com/users';
//   void getDataFromNetwork(String baseUlr, String api) async {
//     Uri url = Uri.https(baseUlr, apiUsers);
//     Response response = await get(url);
//     if (response.statusCode == 200) {
//       text = response.body;
//       setState(() {});
//     }
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     getDataFromNetwork(domain, apiUsers);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         drawer: const Drawer(),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {},
//           child: const Icon(Icons.info_outline),
//         ),
//         appBar: AppBar(
//           title: const Text('Learn Netwoking'),
//         ),
//         body: SingleChildScrollView(
//           child: Column(
//             children: [
//               Text(
//                 text,
//                 style: TextStyle(
//                   fontSize: 15,
//                   fontWeight: FontWeight.w600,
//                 ),
//               ),
//             ],
//           ),
//         ));
//   }
// }
