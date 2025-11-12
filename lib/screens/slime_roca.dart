import 'package:flutter/material.dart';

class SlimeRocaScreen extends StatelessWidget {
  const SlimeRocaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slime Roca'),
        backgroundColor: const Color.fromARGB(255, 29, 65, 224),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'El Slime Roca es conocido por su dureza y resistencia. Su textura es más áspera en comparación con otros slimes, lo que le permite sobrevivir en entornos más difíciles y rocosos.',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Image.network(
            'https://static.wikia.nocookie.net/slimerancher/images/2/24/Rock_Slime_%281%29.png/revision/latest?cb=20220127002645&path-prefix=es',
            height: 400,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
