import 'package:wills_in_memory_database/in_memory_database.dart';

class Dog extends Entity {
  String? name;
  String? path;

  Dog({String? id, String? name, String? path}) {
    this.id = id;
    this.name = name;
    this.path = path;
  }

  static fromJson(json) {
    print(json['id']);
    return Dog(id: json['id'], name: json['name'], path: json['path']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'path': path,
    };
  }
}
