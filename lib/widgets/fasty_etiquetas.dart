import 'package:flutter/material.dart';

class fasty_etiqueta extends StatelessWidget {
  const fasty_etiqueta({super.key, required this.etiqueta});
  final String etiqueta;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 30,
          child: ElevatedButton(
            onPressed: () {},
            child: Text(
              etiqueta,
              style: TextStyle(fontFamily: 'Inter', fontSize: 11),
            ),
          ),
        ),
        SizedBox(
          width: 7,
        )
      ],
    );
  }
}
