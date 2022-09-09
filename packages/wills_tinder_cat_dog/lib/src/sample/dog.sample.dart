import 'dart:convert';

import 'package:wills_tinder_cat_dog/wills_tinder_cat_dog.dart';

class DogSample {
  static final _jsonSampleData =
      '[{"id":"6cfbbc9a85767d62c7e36a888356abc70cb81cee","name":"Bella","path":"/dogs/dog001.jpeg"},{"id":"dc5daf5c5c7235d70ec9d41da3828d53d60e27ab","name":"Max","path":"/dogs/dog002.jpeg"},{"id":"436cc987a6242d0fd8824b2d5e2cb5c49da4a05e","name":"Luna","path":"/dogs/dog003.jpeg"},{"id":"ee832e2e942e07784d202cf305e25bbe7353123d","name":"Charlie","path":"/dogs/dog004.jpeg"},{"id":"610157c808e959501150665932516520ce387a76","name":"Lucy","path":"/dogs/dog005.jpeg"},{"id":"ef5fa597dad6492a8e74425d20ffb7569f946851","name":"Cooper","path":"/dogs/dog006.jpeg"},{"id":"031c615ffd16bfae991ba817c7e393788df68420","name":"Daisy","path":"/dogs/dog007.jpeg"},{"id":"68020fa80f74c5b55306664709e43815eee0262c","name":"Milo","path":"/dogs/dog008.jpeg"},{"id":"1b47b99550c3e07311d7b4554bb032fc3c4a8e8b","name":null,"path":"/dogs/dog009.jpeg"},{"id":"94dffcf0e2aefdbf4b65efe7f01d8814d7ffbd88","name":null,"path":"/dogs/dog010.jpeg"}]';

  static List<Dog> getAll() {
    Iterable json = JsonDecoder().convert(_jsonSampleData);
    return List<Dog>.from(json.map((e) => Dog.fromJson(e)));
  }
}
