import 'package:flutter/material.dart';

class fastyFields extends StatelessWidget {
  final String head;
  final String field;
  final bool showSuffix;

  const fastyFields(
      {super.key,
      required this.head,
      required this.field,
      this.showSuffix = false});
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                head,
                textAlign: TextAlign.start,
                style: const TextStyle(
                    fontFamily: 'Inter', fontSize: 20, color: Colors.black),
              ),
              if (showSuffix)
                IconButton(
                  icon: Container(
                    decoration: BoxDecoration(
                        color: const Color(0xffB44F63),
                        borderRadius: BorderRadius.circular(2)),
                    child: const Icon(
                      Icons.horizontal_rule_outlined,
                      size: 18,
                    ),
                  ),
                  onPressed: () {},
                ),
            ],
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
