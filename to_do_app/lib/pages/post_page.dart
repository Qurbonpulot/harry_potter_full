import 'package:flutter/material.dart';
import 'package:to_do_app/core/apis.dart';
import 'package:to_do_app/services/network_service.dart';

class PostPage extends StatefulWidget {
  const PostPage({super.key});

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();

  void creating() async {
    String title = titleController.value.text.trim();
    String description = descriptionController.value.text.trim();

    if (title.isEmpty || description.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text(
          "Todo yaratilmadi",
          style: TextStyle(
              color: Colors.red, fontSize: 22, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
      ));
      Navigator.pop(context);
    }

    final data = {"title": title, "description": description};

    await Network.methodCreate(
        baseUrl: Api.baseUrlTodo, api: Api.apiTodos, data: data);
    Navigator.pop(context, "ok");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Post"),
      ),
      body: Center(
        child: Container(alignment: Alignment.center,
          height: 300,
          width: 350,
          decoration: BoxDecoration(border: Border.all(color: Colors.blue.shade200, width: 2),
          borderRadius: BorderRadius.circular(35)),
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                controller: titleController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25)),
                    labelText: "title"),
              ),
              TextField(
                controller: descriptionController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25)),
                    labelText: "description"),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: creating,
        child: const Icon(Icons.check_circle_outline),
      ),
    );
  }
}
