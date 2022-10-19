import 'package:fasty/creacion_modulos.dart';
import 'package:fasty/tecnologias.dart';
import 'package:fasty/widgets/drawer.dart';
import 'package:fasty/widgets/fasty_Modulos.dart';
import 'package:fasty/widgets/fasty_options.dart';
import 'package:flutter/material.dart';

import 'arquitecturas.dart';
import 'autenticacion.dart';
import 'fastyboard.dart';
import 'log_in.dart';

class ventana_Modulos extends StatelessWidget {
  ventana_Modulos({super.key});
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        drawer: const drawer(),
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
            automaticallyImplyLeading: false,
            foregroundColor: Colors.blue,
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
                    'Modulos',
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
                                builder: (context) => crearModulos()));
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
            )),
        body: ListView(
          children: const [
            fasty_Modulos(
              imgModulo: AssetImage('assets/Imagenes/modulos1.jpg'),
              Header: 'DASHBOARD',
              color: Colors.amber,
              showHU: true,
              fit: BoxFit.cover,
              color2: Colors.green,
              icono: Icons.arrow_back,
            ),
            Spacer(),
            fasty_Modulos(
              imgModulo: AssetImage('assets/Imagenes/modulos2.jpg'),
              Header: 'Digitalizacion',
              color: Colors.redAccent,
              showHU: true,
              fit: BoxFit.cover,
              color2: Colors.green,
              icono: Icons.arrow_upward_outlined,
            ),
            fasty_Modulos(
              Header: 'Autenticacion',
              color: Colors.green,
              imgModulo: AssetImage('assets/Imagenes/modulos3.jpg'),
              showHU: true,
              fit: BoxFit.cover,
              color2: Colors.green,
              icono: Icons.arrow_upward_outlined,
            ),
            fasty_Modulos(
              Header: 'Usuarios',
              color: Colors.purple,
              imgModulo: AssetImage('assets/Imagenes/modulos4.jpg'),
              showHU: true,
              fit: BoxFit.cover,
              color2: Colors.green,
              icono: Icons.arrow_upward,
            ),
            fasty_Modulos(
              Header: 'Tecnologias',
              color: Colors.blue,
              imgModulo: AssetImage('assets/Imagenes/modulos5.jpg'),
              showHU: true,
              fit: BoxFit.cover,
              color2: Colors.green,
              icono: Icons.arrow_upward_outlined,
            ),
            fasty_Modulos(
              Header: 'Tecnologias',
              color: Colors.blueGrey,
              imgModulo: AssetImage('assets/Imagenes/modulos6.jpg'),
              showHU: true,
              fit: BoxFit.cover,
              color2: Colors.green,
              icono: Icons.arrow_upward_outlined,
            ),
          ],
        ));
  }
}
