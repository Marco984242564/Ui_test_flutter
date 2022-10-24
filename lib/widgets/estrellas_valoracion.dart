// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class estrellas extends StatelessWidget {
  const estrellas({super.key, this.vacia = false});
  final bool vacia;

  @override
  Widget build(BuildContext context) {
    if (vacia) {
      return const Icon(
        Icons.star_outline,
        color: Colors.amber,
      );
    } else {
      return const Icon(Icons.star, color: Colors.amber);
    }
  }
}
