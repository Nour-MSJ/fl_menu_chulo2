import 'package:flutter/material.dart';

class SlimeAtigradoScreen extends StatelessWidget {
  const SlimeAtigradoScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slime Atigrado'),
        backgroundColor: const Color.fromARGB(255, 46, 38, 41),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'El Slime Atigrado es conocido por su patrón rayado que recuerda al de los tigres. Su textura es ligeramente más áspera que la de otros slimes, lo que le da una sensación única al tacto.',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Image.network(
            'https://static.wikia.nocookie.net/slimerancher/images/e/e3/Slime_Atigrado.png/revision/latest?cb=20220127002847&path-prefix=es',
            height: 400,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
