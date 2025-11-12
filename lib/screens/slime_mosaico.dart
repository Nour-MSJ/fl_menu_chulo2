import 'package:flutter/material.dart';

class SlimeMosaicoScreen extends StatelessWidget {
  const SlimeMosaicoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slime Mosaico'),
        backgroundColor: const Color.fromARGB(255, 101, 235, 223),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'El Slime Mosaico es conocido por su apariencia colorida y su textura única. Este slime presenta una combinación de colores vibrantes que se asemejan a un mosaico, lo que lo hace visualmente atractivo. Su naturaleza alegre y dinámica lo convierte en un favorito entre los entusiastas de los slimes.',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Image.network(
            'https://static.wikia.nocookie.net/slimerancher/images/a/a3/Slime_Mosaico.png/revision/latest?cb=20220127003313&path-prefix=es',
            height: 400,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
