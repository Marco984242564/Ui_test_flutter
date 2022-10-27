import 'dart:convert';

import 'package:fasty/models/payload.dart';
import 'package:json_annotation/json_annotation.dart';
part 'technologies.g.dart';

Future<Payload> fetchAlbum() async {
  var http;
  final response = await http.get(Uri.parse(
      'https://smooth-views-sell-187-190-158-32.loca.lt/local/technologies/list'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Payload.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

@JsonSerializable()
class Payload {
  String payload;

  Payload({required this.payload});

  factory Payload.fromJson(Map<String, dynamic> json) {
    return Payload(payload: json['payload']);
  }
}

@JsonSerializable()
class Technologies {
  String name;
  int id;
  String documentation;
  String imageURL;

  Technologies(this.name, this.id, this.documentation, this.imageURL);

  factory Technologies.fromJson(Map<String, dynamic> json) =>
      _$TechnologiesFromJson(json);
  Map<String, dynamic> toJson() => _$TechnologiesToJson(this);
}
