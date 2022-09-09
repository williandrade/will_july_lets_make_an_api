import 'package:dart_frog/dart_frog.dart';
import 'package:wills_in_memory_database/in_memory_database.dart';
import 'package:wills_tinder_cat_dog/wills_tinder_cat_dog.dart';

final _dataBase = _initDatabase();

Handler middleware(Handler handler) {
  return handler
      .use(requestLogger())
      .use(provider<WillsDatabase>((_) => _dataBase));
}

WillsDatabase _initDatabase() {
  final database = WillsDatabase();

  final dogs = DogSample.getAll();
  final cats = CatSample.getAll();

  dogs.forEach((element) {
    database.insert('Dogs', element);
  });

  cats.forEach((element) {
    database.insert('Cats', element);
  });

  return database;
}
