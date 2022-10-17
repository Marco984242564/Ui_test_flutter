import 'package:fasty/widgets/fasty_botones.dart';
import 'package:fasty/widgets/fasty_fields.dart';
import 'package:flutter/material.dart';

class crear_historias extends StatelessWidget {
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
                        children: [
                          const BackButton(
                            color: Colors.lightBlue,
                          ),
                          Container(
                            width: 165,
                            child: const Text(
                              'Crear nueva Historia de Usuario',
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
                    head: '¿Que es lo que quiere?',
                    field: 'Lorem ipsum dolor st consect'),
                const fastyFields(
                    head: '¿Para que lo que quiere?',
                    field: 'Lorem ipsum dolor st consect'),
                const fastyFields(
                    head: 'Clasificacion',
                    field: 'Lorem ipsum dolor st consect'),
                const fastyFields(
                    head: 'Criterios de Aceptación',
                    field: 'Lorem ipsum dolor st consect'),
                SizedBox(
                  height: 20,
                ),
                fasty_Botones(
                    btn_label: 'Crear',
                    btn_label2: 'Cancelar',
                    icondata: Icons.add_outlined)
              ]),
        ));
  }
}
