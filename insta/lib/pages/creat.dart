import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta/services/core/apis.dart';
import 'package:insta/services/network_service.dart';

class Creating extends StatefulWidget {
  const Creating({super.key});

  @override
  State<Creating> createState() => _CreatingState();
}

class _CreatingState extends State<Creating> {
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

    if (name.isEmpty || user.isEmpty || email.isEmpty || phone.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Center(
          child: Text(
            "Contact saqlanmadi",
            style: TextStyle(
                color: Colors.red, fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Colors.white,
      ));
      Navigator.pop(context);
    }

    final data = {
      "name": name,
      "user": user,
      "email": email,
      "street": street.isNotEmpty ? street : "Street",
      "suite": suite.isNotEmpty ? suite : "Street",
      "city": city.isNotEmpty ? city : "Street",
      "phone": phone,
    };

    await Network.postMethod(
        baseUrl: Api.baseUrl, api: Api.apiJson, user: data);
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Center(
        child: Text(
          "Contact saqlandi",
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
        child: Icon(Icons.check),
        backgroundColor: CupertinoColors.activeGreen,
      ),
      body: Padding(
        padding: EdgeInsets.all(25),
        child: ListView(
          children: [
            TextField(
                controller: nameController,
                decoration: InputDecoration(labelText: "name")),
            TextField(
                controller: userController,
                decoration: InputDecoration(labelText: "user")),
            TextField(
                controller: emailController,
                decoration: InputDecoration(labelText: "email")),
            TextField(
                controller: streetController,
                decoration: InputDecoration(labelText: "street")),
            TextField(
                controller: suiteController,
                decoration: InputDecoration(labelText: "suite")),
            TextField(
                controller: cityController,
                decoration: InputDecoration(labelText: "city")),
            TextField(
                controller: phoneController,
                decoration: InputDecoration(labelText: "phone")),
          ],
        ),
      ),
    );
  }
}
