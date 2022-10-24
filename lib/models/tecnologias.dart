import 'package:flutter/foundation.dart';

class Tecnologia {
  int id;
  String name;
  String documentation;
  String imageURL;

  Tecnologia(
      {required this.id,
      required this.name,
      required this.documentation,
      required this.imageURL});

  factory Tecnologia.fromJson(Map json) {
    return Tecnologia(
      id: json["id"],
      documentation: json["documentation"],
      imageURL: json["imageURL"],
      name: json["name"],
    );
  }
}
