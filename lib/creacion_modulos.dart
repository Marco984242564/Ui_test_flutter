import 'package:flutter/material.dart';

class crearModulos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: const [
            BackButton(
              color: Colors.lightBlue,
            ),
            Text(
              'Creacion de Modulos',
              style: TextStyle(
                  fontFamily: 'Inter', color: Colors.lightBlue, fontSize: 18),
            )
          ],
        ),
      ),
    );
  }
}
