import 'package:fasty/widgets/estrellas_valoracion.dart';
import 'package:flutter/material.dart';

import 'fasty_etiquetas.dart';

class arqui_modulos extends StatelessWidget {
  const arqui_modulos({
    super.key,
    required this.imgModulo,
    required this.Header,
    required this.color,
    required this.fit,
    this.showArrow = false,
    required this.icono,
    required this.color2,
    required this.porcentaje,
    this.vacia = true,
    this.vacia2 = true,
    this.vacia3 = true,
  });
  final AssetImage imgModulo;
  final String Header;
  final Color color;
  final String porcentaje;
  final bool vacia;
  final bool vacia2;
  final bool vacia3;
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
            child: Image(
              image: imgModulo,
              fit: fit,
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
                'Esta arquitectura está orientada a microservicios con Nest JS y con una capa interna de GraphQL con Apolo. Muy funcional para aplicaciones de bajo costo y de dimensiones media - baja. Trabaja con Node y es compatible con bases de datos SQL y NO-SQL'),
          ),
          const SizedBox(
            height: 21,
          ),
          Container(
            padding: const EdgeInsets.only(
              left: 38,
            ),
            child: Row(
              children: const [
                fasty_etiqueta(etiqueta: 'NEST'),
                fasty_etiqueta(etiqueta: 'JAVASCRIPT'),
                fasty_etiqueta(etiqueta: 'GraphQL'),
                fasty_etiqueta(etiqueta: 'NODE'),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 28, left: 200),
            child: Row(
              children: [
                estrellas(
                  vacia: vacia,
                ),
                const SizedBox(
                  width: 8,
                ),
                estrellas(
                  vacia: vacia2,
                ),
                const SizedBox(
                  width: 8,
                ),
                estrellas(
                  vacia: vacia3,
                ),
                const SizedBox(
                  width: 18,
                ),
                Text(
                  porcentaje,
                  style: const TextStyle(
                      fontFamily: 'Inter', fontSize: 16, color: Colors.green),
                )
              ],
            ),
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
