import 'package:fasty/creacion_tecnologias.dart';
import 'package:fasty/widgets/drawer.dart';
import 'package:fasty/widgets/fasty_Modulos.dart';
import 'package:flutter/material.dart';

class fasty_tecnologias extends StatelessWidget {
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
        children: const [
          fasty_Modulos(
            imgModulo: AssetImage('assets/Imagenes/nextjs-logo.png'),
            Header: 'next',
            color: Colors.amber,
            fit: BoxFit.contain,
            icono: Icons.arrow_upward_outlined,
            color2: Colors.green,
          ),
          fasty_Modulos(
            imgModulo: AssetImage('assets/Imagenes/react.png'),
            Header: 'React',
            color: Colors.red,
            fit: BoxFit.contain,
            color2: Colors.green,
            icono: Icons.arrow_upward_outlined,
          ),
          fasty_Modulos(
            imgModulo: AssetImage('assets/Imagenes/nest_framework_logo.png'),
            Header: 'next',
            color: Colors.green,
            fit: BoxFit.contain,
            color2: Colors.green,
            icono: Icons.arrow_upward_outlined,
          ),
        ],
      ),
    );
  }
}
