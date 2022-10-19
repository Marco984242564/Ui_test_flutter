import 'package:fasty/creacion_historias.dart';
import 'package:fasty/fastyboard.dart';
import 'package:fasty/widgets/autenticacion_box.dart';
import 'package:fasty/widgets/drawer.dart';
import 'package:flutter/material.dart';

class autenticacion extends StatelessWidget {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const drawer(),
        key: scaffoldKey,
        backgroundColor: Colors.grey.shade200,
        body: ListView(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const fastyBoard()),
                        );
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.blue,
                      )),
                  Container(
                    padding: const EdgeInsets.only(bottom: 22),
                    width: 182,
                    child: const Text(
                      'Módulo Autenticación Backlog',
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 18,
                          color: Colors.blue),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => crear_historias()));
                    },
                    child: const Icon(
                      Icons.add_circle_outlined,
                      color: Colors.blue,
                      size: 35,
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
                        size: 30,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 23,
                  )
                ],
              )
            ],
          ),
          Column(children: const [
            autenticacion_Box(
              titulo: 'Log in',
            ),
            autenticacion_Box(
              titulo: 'Log out',
            ),
            autenticacion_Box(
              titulo: 'Change Password',
            ),
            autenticacion_Box(
              titulo: 'Recover Password',
            ),
            autenticacion_Box(
              titulo: 'Recover Password',
            ),
          ])
        ]));
  }
}
