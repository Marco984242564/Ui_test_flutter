import 'package:flutter/material.dart';

class autenticacion_Box extends StatelessWidget {
  const autenticacion_Box({
    super.key,
    required this.titulo,
  });

  final String titulo;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.white,
          width: double.infinity,
          height: 330,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding:
                        const EdgeInsets.only(left: 47, top: 10, bottom: 10),
                    child: Text(titulo,
                        style: const TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 20,
                            color: Colors.blue)),
                  ),
                  Container(
                    padding: const EdgeInsets.only(right: 18),
                    child: Column(
                      children: [
                        Row(
                          children: const [
                            Icon(
                              Icons.edit_outlined,
                              color: Colors.blue,
                            ),
                            SizedBox(width: 16),
                            Icon(Icons.delete_outlined, color: Colors.blue),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  width: double.infinity,
                  height: 1,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(
                height: 36,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 51.5),
                    child: const Icon(
                      Icons.chat,
                      size: 16,
                      color: Colors.blue,
                    ),
                  ),
                  Container(
                    width: 260,
                    padding: const EdgeInsets.only(right: 21, left: 11.5),
                    child: const Text(
                        'Lorem ipsum dolor sit amet consectetur adipiscing elit'),
                  ),
                ],
              ),
              const SizedBox(
                height: 41,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 51.5),
                    child: const Icon(
                      Icons.chat,
                      size: 16,
                      color: Colors.blue,
                    ),
                  ),
                  Container(
                    width: 260,
                    padding: const EdgeInsets.only(right: 21, left: 11.5),
                    child: const Text(
                        'Lorem ipsum dolor sit amet consectetur adipiscing elit'),
                  ),
                ],
              ),
              const SizedBox(
                height: 41,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 82,
                  ),
                  const Icon(
                    Icons.check,
                    color: Colors.blue,
                    size: 24,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  SizedBox(
                      height: 30,
                      width: 71,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          'BASE',
                          style: TextStyle(fontFamily: 'Inter', fontSize: 9),
                        ),
                      ))
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        )
      ],
    );
  }
}
