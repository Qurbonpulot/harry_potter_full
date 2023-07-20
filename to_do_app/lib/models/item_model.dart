class Item {
  String id;
  String title;
  String description;
  bool isCompleted;
  String createdAt;
  String updatedAt;

  Item({
    required this.id,
    required this.title,
    required this.description,
    required this.isCompleted,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Item.fromJson(Map<String, Object?> json) {
    String id = json["_id"] as String;
    String title = json["title"] as String;
    String description = json["description"] as String;
    bool isCompleted = json["is_completed"] as bool;
    String createdAt = json["created_at"] as String;
    String updatedAt = json["updated_at"] as String;

    return Item(
        id: id,
        title: title,
        description: description,
        isCompleted: isCompleted,
        createdAt: createdAt,
        updatedAt: updatedAt);
  }
}

const example = {
  "_id": "64aacf7cb256e97511573056",
  "title": "ggg",
  "description": "ghhkg",
  "is_completed": false,
  "created_at": "2023-07-09T15:17:16.930Z",
  "updated_at": "2023-07-09T15:17:16.930Z"
};
