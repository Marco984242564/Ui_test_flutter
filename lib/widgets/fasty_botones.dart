// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';

class fasty_Botones extends StatelessWidget {
  const fasty_Botones({
    super.key,
    required this.btn_label,
    required this.btn_label2,
    required this.icondata,
    required this.direccion,
  });
  final String btn_label;
  final String btn_label2;
  final Widget direccion;

  final IconData icondata;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 30,
          width: 100,
          padding: const EdgeInsets.only(left: 20),
          child: ElevatedButton(
            onPressed: () {},
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Icon(
                    color: Colors.blue,
                    icondata,
                    size: 15,
                  ),
                ),
                const SizedBox(
                  width: 5.7,
                ),
                Text(
                  btn_label,
                  style: const TextStyle(fontFamily: 'Inter', fontSize: 9),
                )
              ],
            ),
          ),
        ),
        Container(
          height: 30,
          width: 100,
          padding: const EdgeInsets.only(left: 20),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white, shadowColor: Colors.blue),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => direccion));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  btn_label2,
                  style: const TextStyle(
                      fontFamily: 'Inter', fontSize: 9, color: Colors.blue),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
