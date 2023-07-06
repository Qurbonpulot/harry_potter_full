import 'package:flutter/material.dart';
import 'package:http/http.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(useMaterial3: true),
      darkTheme: ThemeData.dark(useMaterial3: true),
      themeMode: ThemeMode.dark,
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
  PageController controller = PageController();

  void onPageChange(int index) {
    controller.jumpToPage(index);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PageView(
          physics: const ScrollPhysics(),
          scrollDirection: Axis.horizontal,
          controller: controller,
          onPageChanged: onPageChange,
          children: [FirstTask(), SecondTask()],
        ),
      ),
    );
  }
}

class FirstTask extends StatefulWidget {
  const FirstTask({super.key});

  @override
  State<FirstTask> createState() => _FirstTaskState();
}

class _FirstTaskState extends State<FirstTask> {
  String domain = "api.spacexdata.com";
  String api = "/v3/dragons";
  String text = 'Waiting for connecting...';
  void getDataFromNetwork(
      {required String baseUrl, required String api}) async {
    Uri url = Uri.https(baseUrl, api);

    Response response = await get(url);

    if (response.statusCode == 200) {
      text = response.body;
      setState(() {});
    }
  }

  @override
  void initState() {
    super.initState();
    getDataFromNetwork(baseUrl: domain, api: api);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "First Task",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 17, color: Colors.white),
        ),
        centerTitle: true,
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey.shade800,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                Center(
                  child: Text(text),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SecondTask extends StatefulWidget {
  const SecondTask({super.key});

  @override
  State<SecondTask> createState() => _SecondTaskState();
}

class _SecondTaskState extends State<SecondTask> {
  String text = "Connecting now...";
  final domain =  'dummyjson.com';
  final apiUsers = '/products';
  final String path =  'https://jsonplaceholder.typicode.com/posts';
  
  void getData(String baseUrl, apiUsers)async{
    Uri url = Uri.https(baseUrl,apiUsers);
    Response response = await get(url);
    if(response.statusCode == 200){
      text = response.body;
      setState(() {
      });
    }
  }
  @override
  void initState() {
    super.initState();
    getData(domain, apiUsers);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Second Task",
          style: TextStyle(
              color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(text,)
          ],
        ),
      ),
    );
  }
}
