import 'package:wills_in_memory_database/in_memory_database.dart';

class Cat extends Entity {
  String? name;
  String? path;

  Cat({String? id, String? name, String? path}) {
    this.id = id;
    this.name = name;
    this.path = path;
  }

  static fromJson(json) {
    return Cat(id: json['id'], name: json['name'], path: json['path']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'path': path,
    };
  }
}
