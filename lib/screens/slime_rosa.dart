import 'package:flutter/material.dart';

class SlimeRosaScreen extends StatelessWidget {
  const SlimeRosaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Slime Rosa'), backgroundColor: Colors.pink),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'El Slime Rosa es conocido por su textura suave y su color vibrante. Es uno de los slimes más populares debido a su apariencia atractiva y su capacidad para mezclarse con otros colores.',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Image.network(
            'https://static.wikia.nocookie.net/slimerancher/images/1/11/Slime_Rosa.png/revision/latest?cb=20220127002517&path-prefix=es',
            height: 400,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
