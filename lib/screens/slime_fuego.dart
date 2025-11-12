import 'package:flutter/material.dart';

class SlimeFuegoScreen extends StatelessWidget {
  const SlimeFuegoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slime Fuego'),
        backgroundColor: const Color.fromARGB(255, 219, 9, 9),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'El Slime Fuego es conocido por su intensa energía y su capacidad para generar calor. Su color rojo brillante refleja su naturaleza ardiente, y es uno de los slimes más dinámicos y activos en el ecosistema de slimes.',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Image.network(
            'https://static.wikia.nocookie.net/slimerancher/images/d/d9/Fire_Slime.png/revision/latest?cb=20220127003410&path-prefix=es',
            height: 400,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
