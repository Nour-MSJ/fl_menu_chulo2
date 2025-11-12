import 'package:flutter/material.dart';

class SlimeMielScreen extends StatelessWidget {
  const SlimeMielScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slime Miel'),
        backgroundColor: const Color.fromARGB(255, 248, 158, 23),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Los slimes miel son una extraña raza de slimes formados de un compuesto slime hiper dulce. La mayoría de los científicos slime creen que esto es el resultado de sus células viscosas replicando los azúcares naturales que se encuentran en la fruta y néctares de la Lejana, Lejana Pradera. ',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Image.network(
            'https://static.wikia.nocookie.net/slimerancher/images/b/b6/Honey_Slime_SP.png/revision/latest?cb=20220127003000&path-prefix=es',
            height: 400,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
