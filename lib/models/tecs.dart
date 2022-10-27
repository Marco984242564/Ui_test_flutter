import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:fasty/models/payload.dart';

part 'tecs.g.dart';

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

@JsonSerializable()
class Tech {
  Tech(this.Techs);

  String Techs;

  factory Tech.fromJson(Map<String, dynamic> json) => _$TechFromJson(json);
  Map<String, dynamic> toJson() => _$TechToJson(this);
}

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Future<Payload> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Fetch Data Example'),
        ),
        body: Center(
          child: FutureBuilder<Payload>(
            future: futureAlbum,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data!.payload);
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }

              // By default, show a loading spinner.
              return const CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}
