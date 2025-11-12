import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutesLejanaPradera {
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
      route: 'sliemrosa',
      icon: Icons.grain,
      name: 'Slime Rosa',
      screen: const SlimeRosaScreen(),
    ),
    MenuOption(
      route: 'slimeatigrado',
      icon: Icons.animation_outlined,
      name: 'Slime Atigrado',
      screen: const SlimeAtigradoScreen(),
    ),
    MenuOption(
      route: 'slimemiel',
      icon: Icons.auto_awesome_sharp,
      name: 'Slime Miel',
      screen: const SlimeMielScreen(),
    ),
    MenuOption(
      route: 'slimeroca',
      icon: Icons.area_chart_outlined,
      name: 'Slime Roca',
      screen: const SlimeRocaScreen(),
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
