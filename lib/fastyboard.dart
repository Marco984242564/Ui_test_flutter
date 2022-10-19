import 'package:fasty/arquitecturas.dart';
import 'package:fasty/log_in.dart';
import 'package:fasty/tecnologias.dart';
import 'package:fasty/ventana_modulos.dart';
import 'package:fasty/widgets/drawer.dart';
import 'package:fasty/widgets/fasty_options.dart';
import 'package:flutter/material.dart';

import 'autenticacion.dart';

//DASHBOARD DE LA APLICACION
class fastyBoard extends StatelessWidget {
  const fastyBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const drawer(),
    );
  }
}
