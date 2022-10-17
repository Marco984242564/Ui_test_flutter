import 'package:fasty/widgets/autenticacion_box.dart';
import 'package:flutter/material.dart';

class autentcacion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: ListView(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {},
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
                  const Icon(
                    Icons.add_circle_outlined,
                    color: Colors.blue,
                    size: 35,
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
                    child: const Icon(
                      Icons.menu_outlined,
                      color: Colors.white,
                      size: 30,
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
