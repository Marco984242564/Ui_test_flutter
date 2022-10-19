import 'package:flutter/material.dart';

class estrellas extends StatelessWidget {
  const estrellas({super.key, this.vacia = false});
  final bool vacia;

  @override
  Widget build(BuildContext context) {
    if (vacia)
      return Icon(
        Icons.star_outline,
        color: Colors.amber,
      );
    else
      return Icon(Icons.star, color: Colors.amber);
  }
}
