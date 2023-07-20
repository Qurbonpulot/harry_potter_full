import 'package:flutter/material.dart';
import 'package:to_do_app/core/apis.dart';
import 'package:to_do_app/models/item_model.dart';
import 'package:to_do_app/services/network_service.dart';

class EditPost extends StatefulWidget {

  const EditPost({super.key,});

  @override
  State<EditPost> createState() => _EditPostState();
}

class _EditPostState extends State<EditPost> {

  final controllerTitle = TextEditingController();
  final controllerDescription = TextEditingController();


  void edit()async{
    Item item = ModalRoute.of(context)!.settings.arguments as Item;
    String title = controllerTitle.value.text.trim();
    String description = controllerDescription.value.text.trim();


    final data = {
      "title":title.isNotEmpty ? title : item.title,
      "description" : description.isNotEmpty?description : item.description
    };
    await Network.methodEdit(api: Api.apiTodos,baseUrl: Api.baseUrlTodo,data: data,id: item.id);
    Navigator.pop(context,"1");
  }

  @override
  Widget build(BuildContext context) {
    Item item = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:const Text("Create User"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
                controller: controllerTitle,
                decoration: InputDecoration(labelText: item.title)),
            TextField(
                controller: controllerDescription,
                decoration: InputDecoration(labelText: item.description)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: edit,
        child: Icon(Icons.check),
      ),
    );
  }
}
