// import 'package:flutter/material.dart';
// import 'package:http/http.dart';
//
// class HomePage extends StatefulWidget {
//   const HomePage({super.key});
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   String path = "https://jsonplaceholder.typicode.com/posts";
//   String text = "No Data";
//
//   @override
//   void initState() {
//
//     super.initState();
//     getDataFromKetmon(path);
//   }
//   void getDataFromKetmon(String path)async{
//     Uri url = Uri.parse(path);
//     Response response = await get(url);
//     if(response.statusCode == 200){
//       text = response.body;
//       setState(() {
//       });
//     }
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Learn Networking"),
//         centerTitle: true,
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {},
//         child: const Icon(Icons.info_outline),
//       ),
//       drawer: const Drawer(),
//       body:  Center(
//         child: Text(text),
//       ),
//     );
//   }
// }
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
// import 'dart:convert';
//
// import 'package:flutter/material.dart';
// import 'package:http/http.dart';
// import 'package:learn_http/models/post_model.dart';
//
// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   List<Album> list = [];
//   final domain = "jsonplaceholder.typicode.com";
//   final api = "/albums";
//
//   @override
//   void initState() {
//     super.initState();
//     getDataFromCloud(api: api);
//   }
//
//   void getDataFromCloud(
//       {required String api,
//         String baseUrl = "jsonplaceholder.typicode.com",
//         int? id}) {
//     Uri url = Uri.https(baseUrl, "$api${id != null ? "/$id" : ""}");
//     get(url).then((response) {
//       if (response.statusCode == 200) {
//         final List result = jsonDecode(response.body);
//         list = result.map((json) => Album.fromJson(json)).toList();
//       }
//       setState(() {});
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("User posts"),
//       ),
//       body: ListView.builder(
//         itemCount: list.length,
//         itemBuilder: (_, index) {
//           final post = list[index];
//           return Card(
//             child: ListTile(
//               leading: Container(
//                 padding: const EdgeInsets.all(10),
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: Colors.primaries[index % Colors.primaries.length],
//                 ),
//                 child: Text(post.id.toString(), style: const TextStyle(color: Colors.white, fontSize: 16),),
//               ),
//               title: Text(post.title),
//               subtitle: Text(post.userId.toString()),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
//
// import 'dart:convert';
//
// import 'package:flutter/material.dart';
// import 'package:http/http.dart';
// import 'package:learn_http/models/post_model.dart';
//
// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   List<Post> list = [];
//   List<Album> listAlbum = [];
//   final domain = "jsonplaceholder.typicode.com";
//   final api = "/posts";
//   final apiAlbum = "/album";
//   @override
//   void initState() {
//     super.initState();
//     fetchDataAlbum();
//   }
//
//   void fetchData() async {
//     String data = await getMethod(api: api);
//     list = parsePostList(data);
//     setState(() {});
//   }
//
//   void fetchDataAlbum() async {
//     String data = await getMethod(api: apiAlbum);
//     listAlbum = parseAlbumList(data);
//     setState(() {});
//   }
//
//   Future<String> getMethodAlbum(
//       {required String api,
//       String baseUrl = "jsonplaceholder.typicode.com",
//       int? id}) async {
//     Uri url = Uri.https(baseUrl, "$apiAlbum${id != null ? "/$id" : ""}");
//     final response = await get(url);
//
//     if (response.statusCode == 200) {
//       return response.body;
//     }
//     throw Exception("Network Exception");
//   }
//
//   Future<String> getMethod(
//       {required String api,
//       String baseUrl = "jsonplaceholder.typicode.com",
//       int? id}) async {
//     Uri url = Uri.https(baseUrl, "$api${id != null ? "/$id" : ""}");
//     final response = await get(url);
//
//     if (response.statusCode == 200) {
//       return response.body;
//     }
//     throw Exception("Network Exception");
//   }
//
//   List<Post> parsePostList(String data) {
//     final List result = jsonDecode(data);
//     final items = result.map((json) => Post.fromJson(json)).toList();
//     return items;
//   }
//
//   List<Album> parseAlbumList(String data) {
//     final List result = jsonDecode(data);
//     final items = result.map((json) => Album.fromJson(json)).toList();
//     return items;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("User posts"),
//       ),
//       body: ListView.builder(
//         itemCount: list.length,
//         itemBuilder: (_, index) {
//           final post = list[index];
//           return Card(
//             child: ListTile(
//               leading: Container(
//                 padding: const EdgeInsets.all(10),
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: Colors.primaries[index % Colors.primaries.length],
//                 ),
//                 child: Text(
//                   post.userId.toString(),
//                   style: const TextStyle(color: Colors.white, fontSize: 16),
//                 ),
//               ),
//               title: Text(post.title),
//               subtitle: Text(post.body),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }



import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:learn_http/models/post_model.dart';
import 'package:learn_http/services/network_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Post> list = [];


  @override
  void initState() {
    super.initState();
    fetchData();
  }

  void fetchData() async {
    String? data = await Network.methodGet(api: Network.apiPosts);
    if(data != null) {
      list = Network.parsePostList(data);
      setState(() {});
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Something error! Check your network connection")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User posts"),
      ),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (_, index) {
          final post = list[index];
          return Card(
            child: ListTile(
              leading: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.primaries[index % Colors.primaries.length],
                ),
                child: Text(post.userId.toString(), style: const TextStyle(color: Colors.white, fontSize: 16),),
              ),
              title: Text(post.title),
              subtitle: Text(post.body),
            ),
          );
        },
      ),
    );
  }
}