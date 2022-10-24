// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';

class insertar_Imagen extends StatelessWidget {
  const insertar_Imagen({super.key, required this.height});

  final double height;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          Container(
            width: double.infinity,
            height: height,
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Icon(Icons.image_outlined),
          ),
        ],
      ),
    );
  }
}
