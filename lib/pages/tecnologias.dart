// ignore_for_file: unused_import, camel_case_types

import 'dart:convert';
import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:fasty/models/tecnologias.dart';
import 'package:fasty/pages/creacion_tecnologias.dart';
import 'package:fasty/widgets/drawer.dart';
import 'package:fasty/widgets/fasty_Modulos.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:skeleton_loader/skeleton_loader.dart';

class fasty_tecnologias extends StatefulWidget {
  const fasty_tecnologias({super.key});

  @override
  State<fasty_tecnologias> createState() => _fasty_tecnologiasState();
}

class _fasty_tecnologiasState extends State<fasty_tecnologias> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  Future<List<Tecnologia>>? _listadoTec;
  Future<List<Tecnologia>> _getTec() async {
    final response = await http.get(Uri.parse(
        "https://blue-glasses-sin-187-190-176-194.loca.lt/local/technologies/list"));

    List<Tecnologia> Tecs = [];

    if (response.statusCode == 200) {
      String body = utf8.decode(response.bodyBytes);
      final jsonData = jsonDecode(body);

      for (var item in jsonData["technologies"]) {
        Tecs.add(Tecnologia(
            id: item.id,
            documentation: item.documentation,
            imageUrl: item.imageUrl,
            name: item.name));
      }
      return Tecs;
    } else {
      throw Exception("Error");
    }
  }

  @override
  void initState() {
    super.initState();

    _listadoTec = _getTec();
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
      body: FutureBuilder(
        future: _listadoTec,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            print(snapshot.data);
            return Text("hola");
          } else if (snapshot.hasError) {
            print(snapshot.error);
            return Text("error");
            return Text("hola");
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }

  List<Widget> _tecs(data) {
    List<Widget> tecs = [];
    for (var tec in data) {
      tecs.add(Text(tec.name));
    }
    return tecs;
  }
}
