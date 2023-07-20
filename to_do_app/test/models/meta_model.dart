import 'dart:convert';

import 'package:test/test.dart';
import 'package:to_do_app/core/apis.dart';
import 'package:to_do_app/models/meta_model.dart';
import 'package:to_do_app/services/network_service.dart';
void main(){
  test("Meta model test", ()async{
    final response =await Network.methodGet(baseUrl: Api.baseUrlTodo, api: Api.apiTodos);
    final json = jsonDecode(response!) as Map<String, Object?>;
    final meta = Meta.fromJson(json["meta"] as Map<String, Object?>);
    expect(meta,const TypeMatcher<Meta>());
  });
}