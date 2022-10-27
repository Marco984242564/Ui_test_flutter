import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:fasty/models/technologies.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
part 'payload.g.dart';

Future<Payload> fetchAlbum() async {
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
