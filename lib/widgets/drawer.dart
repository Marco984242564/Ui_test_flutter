// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

import '../pages/arquitecturas.dart';
import '../pages/autenticacion.dart';
import '../pages/fastyboard.dart';
import '../pages/log_in.dart';
import '../pages/tecnologias.dart';
import '../pages/ventana_modulos.dart';
import 'fasty_options.dart';

class drawer extends StatelessWidget {
  const drawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 266,
      child: ListView(
        children: [
          Container(
            padding: const EdgeInsets.only(
                top: 47.2, left: 58, right: 58, bottom: 53),
            child: const Image(
              height: 35.8,
              width: 150,
              image: AssetImage('assets/Logo/Fastylogo.jpeg'),
            ),
          ),
          const fastyOptions(
            iconData: Icons.home_outlined,
            label: 'DASHBOARD',
            direccion: fastyBoard(),
          ),
          const SizedBox(
            height: 16,
          ),
          fastyOptions(
            iconData: Icons.extension_outlined,
            label: 'MODULOS',
            direccion: ventana_Modulos(),
          ),
          const SizedBox(
            height: 16,
          ),
          const fastyOptions(
            iconData: Icons.sticky_note_2_outlined,
            label: 'COTIZACIONES',
            direccion: fastyBoard(),
          ),
          const SizedBox(
            height: 16,
          ),
          fastyOptions(
            iconData: Icons.perm_identity_outlined,
            label: 'USUARIOS',
            direccion: autenticacion(),
          ),
          const SizedBox(
            height: 16,
          ),
          fastyOptions(
            iconData: Icons.language_outlined,
            label: 'TECNOLOGIAS',
            direccion: fasty_tecnologias(),
          ),
          const SizedBox(
            height: 16,
          ),
          fastyOptions(
            iconData: Icons.interests_outlined,
            label: 'ARQUITECTURAS',
            direccion: fasty_arquitectura(),
          ),
          const SizedBox(
            height: 16,
          ),
          const fastyOptions(
            iconData: Icons.rate_review_outlined,
            label: 'TAREAS',
            direccion: fastyBoard(),
          ),
          const SizedBox(
            height: 51,
          ),
          Container(
            padding: const EdgeInsets.only(left: 53),
            child: const Text(
              'Usuario1',
              style: TextStyle(fontFamily: 'Inter', fontSize: 16),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 53),
            child: const Text(
              'Admin',
              style: TextStyle(fontFamily: 'Inter', fontSize: 12),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 53),
                child: IconButton(
                  icon: const Icon(Icons.logout_outlined),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Log_in()),
                    );
                  },
                ),
              ),
              const Text('Log Out'),
            ],
          ),
          const SizedBox(
            height: 54,
          )
        ],
      ),
    );
  }
}
