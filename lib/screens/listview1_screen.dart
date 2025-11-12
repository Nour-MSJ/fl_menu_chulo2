import 'package:fl_components/routes/app_routes_lejana_pradera.dart';
import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  const Listview1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final slimeMenuOptions = AppRoutesLejanaPradera.menuOptions;

    return Scaffold(
      appBar: AppBar(title: Text('SlimePedia - Lejana Pradera')),
      body: ListView.separated(
        //Los separadores son lineas entre los elementos
        itemBuilder: (context, index) => ListTile(
          /*itemBuilder recorre cada elemento de la lista y 
          crea un ListTile que contiene el icono, el nombre y la accion al presionar */
          leading: Icon(
            slimeMenuOptions[index].icon,
          ), //Icono al inicio del ListTile
          title: Text(slimeMenuOptions[index].name),
          onTap: () {
            Navigator.pushNamed(
              context,
              slimeMenuOptions[index].route,
            ); //Empuja la nueva pantalla
          },
        ),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: slimeMenuOptions.length, //Cantidad de elementos en la lista
      ),
    );
  }
}
