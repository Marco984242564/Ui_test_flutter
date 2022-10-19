import 'package:fasty/widgets/arqui_modulos.dart';
import 'package:fasty/widgets/drawer.dart';
import 'package:fasty/widgets/fasty_Modulos.dart';
import 'package:fasty/widgets/fasty_etiquetas.dart';
import 'package:flutter/material.dart';

class fasty_arquitectura extends StatelessWidget {
  final scaffoldKey = GlobalKey<ScaffoldState>();
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
                    'Arquitecturas',
                    style: TextStyle(
                        fontFamily: 'Inter', fontSize: 18, color: Colors.blue),
                  ),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.add_circle_outlined,
                      color: Colors.blue,
                      size: 30,
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
        children: [
          Column(
            children: const [
              arqui_modulos(
                imgModulo: AssetImage('assets/Imagenes/nextjs-logo.png'),
                Header: 'Microservicios con Nest',
                color: Colors.amber,
                fit: BoxFit.cover,
                icono: Icons.arrow_upward_outlined,
                showArrow: true,
                color2: Colors.green,
                porcentaje: '91 %',
                vacia: false,
                vacia2: false,
                vacia3: false,
              ),
            ],
          ),
          const arqui_modulos(
            imgModulo: AssetImage('assets/Imagenes/react.png'),
            Header: 'App Móvil con React y AWS Lambda',
            color: Colors.red,
            fit: BoxFit.cover,
            icono: Icons.arrow_downward_outlined,
            showArrow: true,
            color2: Colors.red,
            porcentaje: '75 %',
            vacia: false,
            vacia2: false,
            vacia3: true,
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
