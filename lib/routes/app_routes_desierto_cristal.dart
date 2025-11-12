import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutesDesiertoCristal {
  static const initialRoute =
      'home'; //Define la primera pantalla que se muestra
  static final menuOptions = <MenuOption>[
    //Lista de opciones de menu
    MenuOption(
      //Cada opcion del menu
      route: 'home', //Ruta asociada
      icon: Icons.home,
      name: 'Home Screen',
      screen: const HomeScreen(),
    ),
    MenuOption(
      route: 'slimederviche',
      icon: Icons.grain,
      name: 'Slime Derviche',
      screen: const SlimeDervicheScreen(),
    ),
    MenuOption(
      route: 'slimefuego',
      icon: Icons.animation_outlined,
      name: 'Slime Fuego',
      screen: const SlimeFuegoScreen(),
    ),
    MenuOption(
      route: 'slimemarania',
      icon: Icons.auto_awesome_sharp,
      name: 'Slime Maraña',
      screen: const SlimeMaraniaScreen(),
    ),
    MenuOption(
      route: 'slimemosaico',
      icon: Icons.area_chart_outlined,
      name: 'Slime Mosaico',
      screen: const SlimeMosaicoScreen(),
    ),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => HomeScreen());
  }
}
