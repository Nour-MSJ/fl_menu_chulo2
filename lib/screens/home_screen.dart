import 'package:fl_components/routes/app_routes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SlimePedia'), elevation: 60),
      body: ListView.separated(
        // Lista separada por divisores
        itemBuilder: (context, index) => ListTile(
          leading: Icon(
            AppRoutes.menuOptions[index].icon,
          ), // Icono a la izquierda
          title: Text(AppRoutes.menuOptions[index].name), // Título del ítem
          onTap: () {
            Navigator.pushNamed(
              context,
              AppRoutes.menuOptions[index].route,
            ); // Navegación a la ruta correspondiente
          },
        ),
        separatorBuilder: (context, index) => Divider(), // Divisor entre ítems
        itemCount: AppRoutes.menuOptions.length, // Número total de ítems
      ),
    );
  }
}
