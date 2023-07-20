import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta/services/core/apis.dart';
import 'package:insta/services/network_service.dart';

class Editing extends StatefulWidget {
  final int id;
  final String name;
  final String user;
  final String email;
  final String street;
  final String suite;
  final String city;
  final String phone;
  const Editing(
      {super.key,
        required this.id,
      required this.name,
      required this.user,
      required this.email,
      required this.street,
      required this.suite,
      required this.city,
      required this.phone});

  @override
  State<Editing> createState() => _EditingState();
}

class _EditingState extends State<Editing> {
  final nameController = TextEditingController();
  final userController = TextEditingController();
  final emailController = TextEditingController();
  final streetController = TextEditingController();
  final suiteController = TextEditingController();
  final cityController = TextEditingController();
  final phoneController = TextEditingController();

  void creating() async {
    String name = nameController.value.text.trim();
    String user = userController.value.text.trim();
    String email = emailController.value.text.trim();
    String street = streetController.value.text.trim();
    String suite = suiteController.value.text.trim();
    String city = cityController.value.text.trim();
    String phone = phoneController.value.text.trim();


    final data = {
      "name": name.isNotEmpty ? name : widget.name,
      "user": user.isNotEmpty ? user : widget.user,
      "email": email.isNotEmpty? email : widget.email,
      "street": street.isNotEmpty ? street : widget.street,
      "suite": suite.isNotEmpty ? suite : widget.suite,
      "city": city.isNotEmpty ? city : widget.city,
      "phone": phone.isNotEmpty ? phone : widget.phone,
    };

    if(name.isEmpty &&
    user.isEmpty &&
    email.isEmpty &&
    street.isEmpty &&
    suite.isEmpty &&
    city.isEmpty &&
    phone.isEmpty
    ){
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Center(
          child: Text(
            "Contact Ozgartirilmadidi",
            style: TextStyle(
                color: Colors.orange, fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Colors.white,
      ));
      Navigator.pop(context, "no");
    }
    await Network.putMethod(
        baseUrl: Api.baseUrl, api: Api.apiJson, user: data, id: widget.id);
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Center(
        child: Text(
          "Contact Ozgartirildi",
          style: TextStyle(
              color: Colors.green, fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: Colors.white,
    ));
    Navigator.pop(context, "ok");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: creating,
        child: const Icon(Icons.check),
        backgroundColor: CupertinoColors.activeGreen,
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: ListView(
          children: [
            TextField(
                controller: nameController,
                decoration: const InputDecoration(labelText: "name")),
            TextField(
                controller: userController,
                decoration: const InputDecoration(labelText: "user")),
            TextField(
                controller: emailController,
                decoration: const InputDecoration(labelText: "email")),
            TextField(
                controller: streetController,
                decoration: const InputDecoration(labelText: "street")),
            TextField(
                controller: suiteController,
                decoration: const InputDecoration(labelText: "suite")),
            TextField(
                controller: cityController,
                decoration: const InputDecoration(labelText: "city")),
            TextField(
                controller: phoneController,
                decoration: const InputDecoration(labelText: "phone")),
          ],
        ),
      ),
    );
  }
}
