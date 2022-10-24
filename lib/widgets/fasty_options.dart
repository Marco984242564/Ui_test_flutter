// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

//WIDGETS PARA EL DASHBOARD DE FASTY

class fastyOptions extends StatelessWidget {
  const fastyOptions(
      {super.key,
      required this.iconData,
      required this.label,
      required this.direccion});
  final IconData iconData;
  final String label;
  final Widget direccion;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => direccion));
      },
      child: SizedBox(
        width: 265,
        height: 84,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 53),
              child: Icon(
                iconData,
                size: 25,
              ),
            ),
            const SizedBox(
              width: 24,
            ),
            Text(
                textAlign: TextAlign.center,
                style: const TextStyle(fontFamily: 'Inter', fontSize: 16),
                label)
          ],
        ),
      ),
    );
  }
}
