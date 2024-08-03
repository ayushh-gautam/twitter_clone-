import 'package:flutter/material.dart';

ThemeData darkMode = ThemeData(
    colorScheme: const ColorScheme.dark(
        brightness: Brightness.dark,
        surface: Color.fromARGB(255, 20, 20, 20),
        primary: Color.fromARGB(255, 105, 105, 105),
        secondary: Color.fromARGB(255, 30, 30, 30),
        tertiary: Color.fromARGB(255, 47, 47, 47),
        inversePrimary: Colors.white),
    elevatedButtonTheme: const ElevatedButtonThemeData(
        style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(Colors.green))));
