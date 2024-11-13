
import 'package:flutter/material.dart';

final darkTheme = ThemeData.dark().copyWith(
  scaffoldBackgroundColor: const Color.fromARGB(250, 29, 30, 32),
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
  primaryColor: Colors.white,
  focusColor: Colors.black,
  hintColor: Colors.black,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: Colors.black,
      backgroundColor: Colors.white,
    ),
  ),
);
final lightTheme = ThemeData.light().copyWith(
  primaryColor: Colors.white,
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: Colors.black,
      backgroundColor: Colors.white,
    ),
  ),
);