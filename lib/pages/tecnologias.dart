// ignore_for_file: unused_import, camel_case_types

import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:fasty/models/tecs.dart';
import 'package:fasty/pages/creacion_tecnologias.dart';
import 'package:fasty/widgets/drawer.dart';
import 'package:fasty/widgets/fasty_Modulos.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class fasty_tecnologias extends StatefulWidget {
  const fasty_tecnologias({super.key});

  @override
  State<fasty_tecnologias> createState() => _fasty_tecnologiasState();
}

class _fasty_tecnologiasState extends State<fasty_tecnologias> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  Future<http.Request> _getTec() async {
    var request = http.Request(
        'GET',
        Uri.parse(
            'https://twenty-tips-learn-187-190-158-32.loca.lt/local/technologies/list'));

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      final res = await response.stream.bytesToString();
      // var jsonData = await jsonDecode(res);

      // List<Tecnologia> tecnologias = [];
      // for (var u in jsonData.values) {
      //   Tecnologia tecnologia = Tecnologia(
      //       documentation: u['documentation'],
      //       id: u['id'],
      //       imageURL: u['imageURL'],
      //       name: u['name']);
      //   tecnologias.add(tecnologia);
      // }

      print(res);
    } else {
      print(response.reasonPhrase);
    }
    return request;
  }

  @override
  void initState() {
    super.initState();
    _getTec();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const drawer(),
      key: scaffoldKey,
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 70,
          backgroundColor: const Color.fromARGB(255, 240, 235, 235),
          title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  padding: const EdgeInsets.only(
                    left: 47,
                  ),
                  child: const Text(
                    'Tecnologias',
                    style: TextStyle(
                        fontFamily: 'Inter', fontSize: 18, color: Colors.blue),
                  ),
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const crear_tecnologia()));
                      },
                      child: const Icon(
                        Icons.add_circle_outlined,
                        color: Colors.blue,
                        size: 30,
                      ),
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    Container(
                      padding: const EdgeInsets.only(),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.blue,
                      ),
                      child: InkWell(
                        onTap: () {
                          scaffoldKey.currentState!.openDrawer();
                        },
                        child: const Icon(
                          color: Colors.white,
                          Icons.menu_outlined,
                          size: 25,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 23,
                    )
                  ],
                )
              ])),
      body: ListView(
        children: const [],
      ),
    );
  }
}
