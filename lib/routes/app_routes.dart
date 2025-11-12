import 'package:fl_components/models/models.dart';
import 'package:fl_components/routes/app_routes_desierto_cristal.dart';
import 'package:fl_components/routes/app_routes_lejana_pradera.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(
      route: 'home',
      icon: Icons.home_max_outlined,
      name: 'Home Screen',
      screen: const HomeScreen(),
    ),
    MenuOption(
      route: 'listview1',
      icon: Icons.list_alt_outlined,
      name: 'Listview tipo 1',
      screen: const Listview1Screen(),
    ),
    MenuOption(
      route: 'listview2',
      icon: Icons.list_sharp,
      name: 'Listview tipo 2',
      screen: const Listview2Screen(),
    ),
    MenuOption(
      route: 'alert',
      icon: Icons.add_alert_outlined,
      name: 'Alertas',
      screen: const AlertScreen(),
    ),
    MenuOption(
      route: 'card',
      icon: Icons.card_travel_outlined,
      name: 'Cards',
      screen: const CardScreen(),
    ),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes =
        {}; //Crea una lista vacia para las rutas

    for (final option in menuOptions) {
      //Recorre cada opcion del menu y lo agrega a la lista de rutas
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    appRoutes.addAll(
      AppRoutesLejanaPradera.getAppRoutes(),
    ); //Agrega las rutas de la otra clase

    appRoutes.addAll(AppRoutesDesiertoCristal.getAppRoutes());

    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => AlertScreen());
  }
}
