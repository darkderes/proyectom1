import 'dart:io';

import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color.fromRGBO(204, 20, 34, 1);
  static const Color secondary = Color.fromRGBO(179, 22, 42, 1);
  static const Color terciary = Colors.indigo;
  static const Color cuaternary = Colors.white;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: primary,
    scaffoldBackgroundColor: Colors.grey.shade200,
    

    // app theme
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: cuaternary,
      unselectedItemColor: cuaternary,
      backgroundColor: Color(0x00ffffff),
      elevation: 0,
      selectedLabelStyle: TextStyle(fontSize: 20),
      unselectedLabelStyle: TextStyle(fontSize: 16),
    ),
  );
}
