import 'package:fasty/widgets/fasty_Modulos.dart';
import 'package:flutter/material.dart';

class ventana_Modulos extends StatelessWidget {
  const ventana_Modulos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
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
                        size: 30,
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
            ),
            Spacer(),
            fasty_Modulos(
              imgModulo: AssetImage('assets/Imagenes/modulos2.jpg'),
              Header: 'Digitalizacion',
              color: Colors.redAccent,
            ),
            fasty_Modulos(
              Header: 'Autenticacion',
              color: Colors.green,
              imgModulo: AssetImage('assets/Imagenes/modulos3.jpg'),
            ),
            fasty_Modulos(
              Header: 'Usuarios',
              color: Colors.purple,
              imgModulo: AssetImage('assets/Imagenes/modulos4.jpg'),
            ),
            fasty_Modulos(
              Header: 'Tecnologias',
              color: Colors.blue,
              imgModulo: AssetImage('assets/Imagenes/modulos5.jpg'),
            ),
            fasty_Modulos(
              Header: 'Tecnologias',
              color: Colors.blueGrey,
              imgModulo: AssetImage('assets/Imagenes/modulos6.jpg'),
            ),
          ],
        ));
  }
}
