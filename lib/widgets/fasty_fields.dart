import 'package:flutter/material.dart';

class fastyFields extends StatelessWidget {
  final String head;
  final String field;

  const fastyFields({super.key, required this.head, required this.field});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        const SizedBox(
          height: 32,
        ),
        SizedBox(
          width: double.infinity,
          child: Text(
            head,
            textAlign: TextAlign.start,
            style: const TextStyle(
                fontFamily: 'Inter', fontSize: 20, color: Colors.black),
          ),
        ),
        TextField(
          decoration: InputDecoration(
            labelText: field,
          ),
          style: const TextStyle(
              fontFamily: 'Inter', fontSize: 16, color: Colors.grey),
        ),
        const SizedBox(
          height: 19,
        )
      ]),
    );
  }
}
