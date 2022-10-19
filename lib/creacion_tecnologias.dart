import 'package:fasty/tecnologias.dart';
import 'package:fasty/widgets/fasty_botones.dart';
import 'package:fasty/widgets/fasty_fields.dart';
import 'package:fasty/widgets/insertar_Imagen.dart';
import 'package:flutter/material.dart';

class crear_tecnologia extends StatelessWidget {
  const crear_tecnologia({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.white,
          body: ListView(
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 21),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          BackButton(
                            color: Colors.lightBlue,
                          ),
                          SizedBox(
                            width: 165,
                            child: Text(
                              'Crear nueva tecnología',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                color: Colors.lightBlue,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 23),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.blue,
                          ),
                          child: const Icon(
                            Icons.menu,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                      width: double.infinity,
                      height: 2,
                      color: Colors.grey,
                    )),
                const fastyFields(
                    showSuffix: true,
                    head: '¿Que es lo que quiere?',
                    field: 'Lorem ipsum dolor st consect'),
                const fastyFields(
                    head: '¿Para que lo que quiere?',
                    field: 'Lorem ipsum dolor st consect'),
                Container(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const insertar_Imagen(
                        height: 175,
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      fasty_Botones(
                        btn_label: 'Crear',
                        btn_label2: 'Cancelar',
                        icondata: Icons.add_outlined,
                        direccion: fasty_tecnologias(),
                      ),
                    ],
                  ),
                ),
              ]),
        ));
  }
}
