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

    // floating action button theme
    // floatingActionButtonTheme: const FloatingActionButtonThemeData(
    //   backgroundColor: primary,
    //   elevation: 5,
    // ),

    // // elevated button theme
    // elevatedButtonTheme: ElevatedButtonThemeData(
    //   style: ElevatedButton.styleFrom(
    //     textStyle: const TextStyle(
    //         fontFamily: 'Montserrat', fontWeight: FontWeight.bold),
    //     padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
    //     backgroundColor: primary,
    //     // shape: const StadiumBorder(),
    //     shape: RoundedRectangleBorder(
    //       borderRadius: BorderRadius.circular(6),
    //     ),
    //     elevation: 0,
    //   ),
    // ),

    // // input decoration theme
    // inputDecorationTheme: InputDecorationTheme(
    //   floatingLabelStyle: const TextStyle(color: primary),
    //   enabledBorder: OutlineInputBorder(
    //     borderSide: BorderSide(color: Colors.grey.shade300),
    //   ),
    //   focusedBorder: const OutlineInputBorder(
    //       // borderSide: BorderSide(color: primary),
    //       ),
    //   // filled: true,
    //   // fillColor: Colors.white,
    //   // border: OutlineInputBorder(
    //   //   borderRadius: BorderRadius.circular(10),
    //   //   borderSide: BorderSide.none,
    //   // ),
    //   // contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
    // ),

    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      // backgroundColor: Colors.white,
      selectedItemColor: cuaternary,
      backgroundColor: Color(0x00ffffff),
     //backgroundColor: Color.fromRGBO(204, 20, 34, 1),
      elevation: 0,
      // unselectedItemColor: Colors.grey,
      // elevation: 0,
      selectedLabelStyle: TextStyle(fontSize: 20),
      unselectedLabelStyle: TextStyle(fontSize: 16),
    ),
  );
}
