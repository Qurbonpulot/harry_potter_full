import 'dart:convert';

import 'package:test/test.dart';
import 'package:to_do_app/core/apis.dart';
import 'package:to_do_app/models/todo_model.dart';
import 'package:to_do_app/services/network_service.dart';
void main(){
  test("Test for Todo", () async{
    final response =await Network.methodGet(baseUrl: Api.baseUrlTodo, api: Api.apiTodos);
    final json = jsonDecode(response!);
    final todo = Todo.fromJson(json);
    expect(todo, TypeMatcher<Todo>());
  });
}