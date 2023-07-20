import 'dart:convert';

import 'package:test/test.dart';
import 'package:to_do_app/core/apis.dart';
import 'package:to_do_app/models/item_model.dart';
import 'package:to_do_app/services/network_service.dart';

void main() {
  group("Test fromJson Item Model", () {
    test("For one", () async {
      final response = await Network.methodGet(
          baseUrl: Api.baseUrlTodo,
          api: Api.apiTodos,
          id: "64aacf7cb256e97511573056");
      final json = jsonDecode(response!);
      final item = Item.fromJson(json["data"] as Map<String, Object?>);
      expect(item, const TypeMatcher<Item>());
    });

    test("For All", () async {
      final response = await Network.methodGet(
          baseUrl: Api.baseUrlTodo,
          api: Api.apiTodos,);
       List<Item>list;
      final json = jsonDecode(response!)["items"] as List;
      list = json.map((e) => Item.fromJson(e)).toList();
      expect(list, const TypeMatcher<List<Item>>());
    });
  });
}
