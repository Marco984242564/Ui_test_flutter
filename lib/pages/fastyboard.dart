// ignore_for_file: camel_case_types

import 'package:fasty/widgets/drawer.dart';
import 'package:flutter/material.dart';

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
