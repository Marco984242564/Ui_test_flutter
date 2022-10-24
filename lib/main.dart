// ignore_for_file: unused_import

import 'package:device_preview/device_preview.dart';

import 'package:fasty/pages/arquitecturas.dart';
import 'package:fasty/pages/autenticacion.dart';
import 'package:fasty/pages/creacion_modulos.dart';
import 'package:fasty/pages/creacion_tecnologias.dart';
import 'package:fasty/pages/tecnologias.dart';
import 'package:fasty/pages/ventana_modulos.dart';
import 'package:fasty/pages/fastyboard.dart';
import 'package:fasty/pages/log_in.dart';
import 'package:fasty/widgets/fasty_options.dart';
import 'package:fasty/widgets/login_data.dart';
import 'package:fasty/widgets/fasty_Modulos.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'pages/creacion_historias.dart';

void main() {
  runApp(DevicePreview(
    builder: (_) => const MyApp(),
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
        home: fasty_tecnologias());
  }
}
