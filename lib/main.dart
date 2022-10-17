import 'package:device_preview/device_preview.dart';
import 'package:fasty/Autenticacion.dart';
import 'package:fasty/creacion_modulos.dart';
import 'package:fasty/ventana_modulos.dart';
import 'package:fasty/fastyboard.dart';
import 'package:fasty/log_in.dart';
import 'package:fasty/widgets/fasty_options.dart';
import 'package:fasty/widgets/login_data.dart';
import 'package:fasty/widgets/fasty_Modulos.dart';
import 'package:flutter/material.dart';

import 'creacion_historias.dart';

void main() {
  runApp(DevicePreview(
    builder: (_) => MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        home: crear_historias());
  }
}
