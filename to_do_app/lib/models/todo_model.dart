import 'package:to_do_app/models/item_model.dart';
import 'package:to_do_app/models/meta_model.dart';

class Todo {
  int code;
  bool success;
  int timestamp;
  String message;
  List<Item> items;
  Meta meta;

  Todo(
      {required this.code,
      required this.success,
      required this.meta,
      required this.message,
      required this.items,
      required this.timestamp});

  factory Todo.fromJson(Map<String, Object?> json) {
    int code = json["code"] as int;
    bool success = json["success"] as bool;
    String message = json["message"] as String;
    Meta? meta = Meta.fromJson(json["meta"] as Map<String, Object?>);
    List<Item>? items = (json["items"] as List)
        .map((e) => Item.fromJson(e as Map<String, Object?>))
        .toList();
    int timestamp = json["timestamp"] as int;
    return Todo(
        code: code,
        success: success,
        meta: meta,
        items: items,
        timestamp: timestamp,
        message: message);
  }
}
