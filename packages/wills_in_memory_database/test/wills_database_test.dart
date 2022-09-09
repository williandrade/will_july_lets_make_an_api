import 'package:wills_in_memory_database/src/entity.dart';
import 'package:wills_in_memory_database/src/wills_database.dart';
import 'package:test/test.dart';

class Dog extends Entity {
  String name;

  Dog(this.name);
}

void main() {
  final tableName = 'Dog';
  group('A group of tests', () {
    test('Inserting', () {
      var newDatabase = WillsDatabase();
      Dog insertedItem = newDatabase.insert(tableName, Dog('Snow'));

      expect(insertedItem.id, isNotNull);
    });
    test('Updating', () {
      var newDatabase = WillsDatabase();
      Dog insertedItem = newDatabase.insert(tableName, Dog('Snow'));

      expect(insertedItem.id, isNotNull);
      insertedItem.name = 'Bob';

      insertedItem = newDatabase.update(tableName, insertedItem);

      expect(insertedItem.name, 'Bob');
    });
    test('Selecting', () {
      var newDatabase = WillsDatabase();
      var items = newDatabase.select(tableName);
      expect(items.length, 0);

      newDatabase.insert(tableName, Dog('Snow'));

      items = newDatabase.select(tableName);
      expect(items.length, greaterThan(0));
    });
    test('Deleting', () {
      var newDatabase = WillsDatabase();
      Dog insertedItem = newDatabase.insert(tableName, Dog('Snow'));

      expect(insertedItem.id, isNotNull);
      newDatabase.delete(tableName, insertedItem.id!);
      var items = newDatabase.select(tableName);
      expect(items.length, 0);
    });
  });
}
