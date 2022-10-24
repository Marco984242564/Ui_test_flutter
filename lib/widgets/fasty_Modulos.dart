// ignore_for_file: file_names, unused_import, camel_case_types, non_constant_identifier_names

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'fasty_etiquetas.dart';

class fasty_Modulos extends StatelessWidget {
  const fasty_Modulos({
    super.key,
    required this.imgModulo,
    required this.Header,
    required this.color,
    this.showHU = false,
    required this.fit,
    this.showArrow = false,
    required this.icono,
    required this.color2,
  });
  final String imgModulo;
  final String Header;
  final Color color;
  final bool showHU;
  final BoxFit fit;
  final bool showArrow;
  final IconData icono;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 152,
            color: Colors.white,
            child: CachedNetworkImage(
              fit: fit,
              imageUrl: imgModulo,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const SizedBox(
                    width: 38,
                  ),
                  Container(
                    height: 15,
                    width: 15,
                    color: color,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  SizedBox(
                    width: 206,
                    child: Text(
                      Header,
                      style: TextStyle(
                          color: color, fontFamily: 'Inter', fontSize: 20),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  if (showArrow)
                    Icon(
                      icono,
                      color: color2,
                    ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(
                    Icons.create_outlined,
                    size: 20,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(
                    Icons.more_vert_outlined,
                    size: 20,
                  ),
                  const SizedBox(
                    width: 21,
                  )
                ],
              )
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 38),
            child: const Text(
                style: TextStyle(fontFamily: 'Inter', fontSize: 16),
                'Lorem ipsum dolor sit amet consectetur adipiscing elit habitasse eget, erat aliquam integer nibh justo '),
          ),
          const SizedBox(
            height: 21,
          ),
          if (showHU)
            Container(
              padding: const EdgeInsets.only(left: 34),
              child: Row(
                children: [
                  const Icon(
                    Icons.local_library_outlined,
                    size: 24,
                    color: Colors.blue,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 8),
                    child: const Text(
                      'O HU',
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 14,
                          color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ),
          const SizedBox(
            height: 39,
          ),
          Container(
            height: 16,
            color: Colors.grey.shade200,
          )
        ],
      ),
    );
  }
}
