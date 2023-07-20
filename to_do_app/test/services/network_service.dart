import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:test/test.dart';
import 'package:to_do_app/core/apis.dart';
import 'package:to_do_app/models/item_model.dart';
import 'package:to_do_app/services/network_service.dart';

void main() {
  group("Test for methods", () {
    test("METHOD GET TEST", () async {
      final response =
          await Network.methodGet(baseUrl: Api.baseUrlTodo, api: Api.apiTodos);
     // debugPrint(json);
      expect(response, isNotNull);
    });

    test("Parse To TodoList", () async {
      final response =
      await Network.methodGet(baseUrl: Api.baseUrlTodo, api: Api.apiTodos);
      final todo = Network.parseToUser(response!);
      expect(todo,const TypeMatcher<List<Item>>());
    });
  });
}
