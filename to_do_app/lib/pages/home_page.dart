import 'package:flutter/material.dart';
import 'package:to_do_app/core/apis.dart';
import 'package:to_do_app/models/item_model.dart';
import 'package:to_do_app/pages/post_page.dart';
import 'package:to_do_app/services/network_service.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Item> users = [];
  @override
  void initState() {
    fetchData();

    super.initState();
  }

  void fetchData() async {
    final data =
        await Network.methodGet(baseUrl: Api.baseUrlTodo, api: Api.apiTodos);
    debugPrint(users.toString());
    users = Network.parseToUser(data!);
    setState(() {});
  }

  void delete(String id) async {
    await Network.methodDelete(
        baseUrl: Api.baseUrlTodo, api: Api.apiTodos, id: id);
    fetchData();
  }

  void post() async {
    final msg = await Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const PostPage()));
    if (msg == "ok") {
      fetchData();
    }
  }

  void put(
     {required String id,
      required String title,
      required String description,
      required bool isCompleted,
      required String createdAt,
      required String updateAt}) async {
    final msg = await Navigator.of(context).pushNamed("/put",
        arguments: Item(
            id: id,
            title: title,
            description: description,
            isCompleted: isCompleted,
            createdAt: createdAt,
            updatedAt: updateAt));
    if (msg == "1") {
      fetchData();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "ToDoApP",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: ListView(
          children: [
            for (int i = 0; i < users.length; i++)
              GestureDetector(
                onTap: () {
                  final user = users[i];
                  put(
                      id: user. id,
                      title: user. title,
                      description: user. description,
                      isCompleted: user. isCompleted,
                      createdAt: user. createdAt,
                    updateAt: user.updatedAt
                  );

                },
                child: Card(
                  child: ListTile(
                    title: Text(users[i].title),
                    subtitle: Text(users[i].description),
                    trailing: IconButton(
                      onPressed: () {
                        delete(users[i].id);
                      },
                      icon: const Icon(Icons.delete),
                    ),
                  ),
                ),
              )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: post,
        child: const Icon(Icons.add),
      ),
    );
  }
}
