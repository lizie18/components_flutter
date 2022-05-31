import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Colors.teal;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    // AppBar Theme
    appBarTheme: const AppBarTheme(color: primaryColor, elevation: 0),

    // TextButton Theme
    textButtonTheme:
        TextButtonThemeData(style: TextButton.styleFrom(primary: primaryColor)),

    // FloatingActionButton Theme
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primaryColor, elevation: 20),

    // ElevatedButton Theme
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            primary: primaryColor, shape: const StadiumBorder(), elevation: 0)),

    // InputDecoration Theme
    inputDecorationTheme: const InputDecorationTheme(
        floatingLabelStyle: TextStyle(color: primaryColor),
        // enabledBorder: OutlineInputBorder(
        //     borderRadius: BorderRadius.only(
        //         bottomLeft: Radius.circular(10),
        //         topRight: Radius.circular(10))),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primaryColor),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                topRight: Radius.circular(10))),
        border: OutlineInputBorder(
            // borderSide: BorderSide(color: Colors.red, width: 4),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                topRight: Radius.circular(10)))),
  );
}
