import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color.fromARGB(255, 187, 190, 196);

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    //Color primario
    primaryColor: const Color.fromARGB(255, 192, 18, 18),

    appBarTheme: AppBarTheme(
      backgroundColor: const Color.fromARGB(255, 192, 18, 18),
      elevation: 20,
      foregroundColor: Colors.white,
    ),

    listTileTheme: ListTileThemeData(
      iconColor: const Color.fromARGB(255, 192, 18, 18),
    ),
  );
}
