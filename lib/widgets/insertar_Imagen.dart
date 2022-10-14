import 'package:flutter/material.dart';

class insertar_Imagen extends StatelessWidget {
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
            height: 160,
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