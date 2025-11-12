import 'package:flutter/material.dart';

class SlimeMaraniaScreen extends StatelessWidget {
  const SlimeMaraniaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slime Maraña'),
        backgroundColor: const Color.fromARGB(255, 2, 145, 9),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'El Slime Maraña es conocido por su textura fibrosa y su color verde intenso. Este slime se caracteriza por su capacidad para entrelazarse y formar estructuras complejas, lo que lo hace único entre los demás slimes. Su naturaleza resistente y adaptable lo convierte en un compañero valioso en diversas situaciones.',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Image.network(
            'https://static.wikia.nocookie.net/slimerancher/images/e/e7/Tangle_Slime-0.png/revision/latest?cb=20220127003408&path-prefix=es',
            height: 400,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
