import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'package:insta/models/user_model.dart';
import 'package:insta/services/core/apis.dart';

sealed class Network {
  /// getmethod
  static Future<String?> getMethod(
      {String baseUrl = Api.baseUrl, required String api, int? id}) async {
    Uri url = Uri.https(baseUrl, "${Api.apiJson}${id != null ? "/$id" : ""}");
    try {
      final response = await get(url);
      if (response.statusCode == 200) {
        return response.body;
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }

  ///method delete
  static Future<void> deleteMethod(
      {String baseUrl = Api.baseUrl,
      required String api,
      required int id}) async {
    Uri url = Uri.https(baseUrl, "${Api.apiJson}/$id");
    try {
      final response = await delete(url);
      if (response.statusCode == 200 ) {
        debugPrint(response.body);
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  ///method post
  static Future<void> postMethod(
      {String baseUrl = Api.baseUrl,
      required String api,
      required Map<String, Object?> user}) async {
    Uri url = Uri.https(baseUrl, Api.apiJson);
    try {
      final response = await post(url, body: user);
      if (response.statusCode == 200||response.statusCode == 201) {
        debugPrint(response.body);
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  ///method put
  static Future<void> putMethod(
      {String baseUrl = Api.baseUrl,
        required String api,
        required Map<String, Object?> user, required int id}) async {
    Uri url = Uri.https(baseUrl, "${Api.apiJson}/$id");
    try {
      final response = await put(url, body: user);
      if (response.statusCode == 200||response.statusCode == 201) {
        debugPrint(response.body);
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  /// parse toList
  static List<User> parseToUser(String data) {
    List<User> users;
    final json = jsonDecode(data) as List;
    users = json.map((e) => User.fromJson(e)).toList();
    return users;
  }
}
