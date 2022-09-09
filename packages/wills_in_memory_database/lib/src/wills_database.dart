import 'package:uuid/uuid.dart';
import 'package:wills_in_memory_database/src/entity.dart';

class WillsDatabase {
  final Map<String, List<Entity>> _database = {};

  WillsDatabase();

  // factory WillsDatabase.sample() {
  //   var instance = WillsDatabase();
  //   instance._database = {};
  //   return instance;
  // }

  T insert<T extends Entity>(String tableName, T data) {
    var table = _getTable(tableName);

    data.id = data.id ?? Uuid().v4();
    table.add(data);

    _database[tableName] = table;
    return data;
  }

  void delete(String tableName, String id) {
    var table = _getTable(tableName);
    table.removeWhere((element) => element.id == id);
  }

  List<T> select<T extends Entity>(String tableName) {
    List<Entity> asd = _getTable(tableName);
    return List<T>.from(asd);
  }

  T update<T extends Entity>(String tableName, T data) {
    data.id!;

    var table = _getTable(tableName);

    var idx = table.indexWhere((element) => element.id == data.id);

    if (idx == -1) {
      throw Exception("Element not found");
    }

    table[idx] = data;

    return data;
  }

  List<Entity> _getTable(String tableName) {
    List<Entity>? table = _database[tableName];
    table ??= [];
    return table;
  }
}
