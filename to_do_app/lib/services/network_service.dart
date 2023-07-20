import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:to_do_app/models/item_model.dart';

sealed class Network {
  ///method get
  static Future<String?> methodGet(
      {required String baseUrl, required String api, String? id}) async {
    Uri url = Uri.https(baseUrl, "$api${id != null ? "/$id" : ""}");
    try {
      http.Response response = await http.get(url);
      if (response.statusCode == 200) {
        return response.body;
      } else {
        return null;
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    return null;
  }

  ///method delete
  static Future<void> methodDelete(
      {required String baseUrl,
      required String api,
      required String id}) async {
    Uri url = Uri.https(baseUrl, "$api/$id");
    try {
      http.Response response = await http.delete(url);
      if (response.statusCode == 200) {
        debugPrint(response.body);
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  ///method create
  static Future<void> methodCreate(
      {required String baseUrl,
      required String api,
      required Map<String, Object?> data}) async {
    Uri url = Uri.https(baseUrl, api);
    try {
      http.Response response = await http.post(url, body: data);
      if (response.statusCode == 200 || response.statusCode == 201) {
        debugPrint(response.body);
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  static Future<void> methodEdit(
      {required String baseUrl,
      required String api,
      required Map<String, Object?> data,
      required String id}) async {
    Uri url = Uri.https(baseUrl, "$api/$id");
    try {
      http.Response response = await http.put(url, body: data);
      if (response.statusCode == 200 || response.statusCode == 201) {
        debugPrint(response.body);
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  ///parse toUser
  static List<Item> parseToUser(String data) {
    List<Item> users;
    final json = jsonDecode(data);
    final items = json["items"] as List;
    users = items.map((e) => Item.fromJson(e)).toList();
    return users;
  }
}
