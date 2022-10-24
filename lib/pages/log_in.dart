// ignore_for_file: camel_case_types

import 'package:fasty/pages/fastyboard.dart';
import 'package:fasty/widgets/login_data.dart';
import 'package:flutter/material.dart';

//PAGIAN DE INICIO DE LA APLICACION

class Log_in extends StatelessWidget {
  const Log_in({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: ListView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            children: [
              Column(children: [
                Container(
                  padding: const EdgeInsets.only(top: 144, left: 30, right: 30),
                  alignment: Alignment.topCenter,
                  child: const Image(
                    width: 300,
                    height: 72,
                    image: AssetImage(
                      'assets/Logo/Fastylogo.jpeg',
                    ),
                  ),
                ),
                Container(
                  width: 360,
                  padding: const EdgeInsets.only(top: 97.7),
                  child: const Text(
                    'Desarrollo de Gestión y Administración de Proyectos con Scrum y Kanban',
                    style: TextStyle(
                      fontFamily: 'Inter-SemiBold',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Wrap(
                  children: const [
                    loginData(
                      label: 'Username',
                      padding: 53.5,
                      obscureText: false,
                    ),
                    loginData(
                      label: '**************',
                      padding: 30.33,
                      obscureText: true,
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.only(
                    top: 32.36,
                    right: 75,
                    left: 75,
                  ),
                  child: SizedBox(
                    width: 210,
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const fastyBoard()));
                      },
                      child: const Text('LOG IN'),
                    ),
                  ),
                )
              ]),
            ],
          ),
        ));
  }
}
