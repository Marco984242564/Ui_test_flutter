// ignore_for_file: camel_case_types

import 'package:fasty/pages/ventana_modulos.dart';
import 'package:fasty/widgets/fasty_botones.dart';
import 'package:fasty/widgets/fasty_fields.dart';
import 'package:fasty/widgets/insertar_Imagen.dart';
import 'package:flutter/material.dart';

class crearModulos extends StatelessWidget {
  const crearModulos({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          title: Row(
            children: const [
              BackButton(
                color: Colors.lightBlue,
              ),
              Text(
                'Creacion de Modulos',
                style: TextStyle(
                  fontFamily: 'Inter',
                  color: Colors.lightBlue,
                  fontSize: 18,
                ),
              )
            ],
          ),
        ),
        body: ListView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          children: [
            const fastyFields(
                head: 'Nombre', field: 'Lorem ipsum dolor st consect'),
            const fastyFields(
                head: 'Descripción', field: 'Lorem ipsum dolor st consect'),
            const SizedBox(
              height: 47,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              child: const Text(
                'Imágenes',
                style: TextStyle(fontFamily: 'Inter', fontSize: 20),
              ),
            ),
            const insertar_Imagen(
              height: 160,
            ),
            const insertar_Imagen(
              height: 160,
            ),
            const insertar_Imagen(
              height: 160,
            ),
            const SizedBox(
              height: 34,
            ),
            Container(
                padding: const EdgeInsets.only(bottom: 53),
                child: fasty_Botones(
                  btn_label: 'Crear',
                  btn_label2: 'Cancelar',
                  icondata: Icons.add_outlined,
                  direccion: ventana_Modulos(),
                )),
          ],
        ),
      ),
    );
  }
}
