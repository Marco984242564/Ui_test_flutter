import 'package:fasty/widgets/fasty_options.dart';
import 'package:flutter/material.dart';

//DASHBOARD DE LA APLICACION
class fastyBoard extends StatelessWidget {
  const fastyBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
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
            ),
            const SizedBox(
              height: 16,
            ),
            const fastyOptions(
              iconData: Icons.extension_outlined,
              label: 'MODULOS',
            ),
            const SizedBox(
              height: 16,
            ),
            const fastyOptions(
              iconData: Icons.sticky_note_2_outlined,
              label: 'COTIZACIONES',
            ),
            const SizedBox(
              height: 16,
            ),
            const fastyOptions(
              iconData: Icons.perm_identity_outlined,
              label: 'USUARIOS',
            ),
            const SizedBox(
              height: 16,
            ),
            const fastyOptions(
              iconData: Icons.language_outlined,
              label: 'TECNOLOGIAS',
            ),
            const SizedBox(
              height: 16,
            ),
            const fastyOptions(
              iconData: Icons.interests_outlined,
              label: 'ARQUITECTURAS',
            ),
            const SizedBox(
              height: 16,
            ),
            const fastyOptions(
              iconData: Icons.rate_review_outlined,
              label: 'TAREAS',
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
                  child: const Icon(Icons.logout_outlined),
                ),
                const Text('Log Out'),
              ],
            ),
            const SizedBox(
              height: 54,
            )
          ],
        ),
      ),
    );
  }
}
