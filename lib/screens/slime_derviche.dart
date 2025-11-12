import 'package:flutter/material.dart';

class SlimeDervicheScreen extends StatelessWidget {
  const SlimeDervicheScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slime Derviche'),
        backgroundColor: const Color.fromARGB(255, 109, 7, 224),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'El Slime Derviche es conocido por su movimiento giratorio y su capacidad para crear remolinos de energía. Su color púrpura intenso lo hace destacar entre otros slimes, y su naturaleza dinámica lo convierte en un compañero fascinante.',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Image.network(
            'https://static.wikia.nocookie.net/slimerancher/images/0/0f/Dervish_Slime.png/revision/latest?cb=20220127003247&path-prefix=es',
            height: 400,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
