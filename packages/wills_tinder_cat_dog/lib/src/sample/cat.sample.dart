import 'dart:convert';

import 'package:wills_tinder_cat_dog/wills_tinder_cat_dog.dart';

class CatSample {
  static final _jsonSampleData =
      '[{"id":"9eef0518d8b5a333ee1fcb1a06a1474a23192c6a","name":"Luna","path":"/cats/cat001.jpeg"},{"id":"8736a06d8cf0124b6554b01f55a173b67c98c619","name":"Milo","path":"/cats/cat002.jpeg"},{"id":"2f902844194ea1cba4c40098b353233569f09a5e","name":"Oliver","path":"/cats/cat003.jpeg"},{"id":"8ebec681a96c461c0d27097ae0ef69c5adabbabe","name":"Leo","path":"/cats/cat004.jpeg"},{"id":"743c37be4b9fc7bbf184ccbc37fd5fb01a501d98","name":"Loki","path":"/cats/cat005.jpeg"},{"id":"07d18763536df0bfe5ae8b7c65dc52cedfc4e162","name":"Bella","path":"/cats/cat006.jpeg"},{"id":"ad2dfbbaf3fac42526d79faebbb276c96d406321","name":"Charlie","path":"/cats/cat007.jpeg"},{"id":"bf139bbe4bfee9ac2505dbc086d8e1a6d92c2b08","name":"Willow","path":"/cats/cat008.jpeg"},{"id":"c878a0999c674fd18aceb531346a9e445710227d","name":null,"path":"/cats/cat009.jpeg"},{"id":"38c26116997e61194ff4e63cf57cfeb0abd65af8","name":null,"path":"/cats/cat010.jpeg"}]';

  static List<Cat> getAll() {
    Iterable json = JsonDecoder().convert(_jsonSampleData);
    return List<Cat>.from(json.map((e) => Cat.fromJson(e)));
  }
}
