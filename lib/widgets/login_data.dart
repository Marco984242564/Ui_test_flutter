// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class loginData extends StatelessWidget {
  final String label;
  final double padding;
  final bool obscureText;

  const loginData(
      {super.key,
      required this.label,
      required this.padding,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: padding),
      alignment: Alignment.center,
      color: Colors.white,
      width: 305,
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
            border: const OutlineInputBorder(),
            labelText: label,
            labelStyle: const TextStyle(
              fontWeight: FontWeight.w600,
              fontFamily: 'Inter',
              fontSize: 20,
            )),
      ),
    );
  }
}
