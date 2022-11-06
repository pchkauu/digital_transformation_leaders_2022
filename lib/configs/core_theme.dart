import 'package:flutter/material.dart';

const fontFamily = 'Poppins';

final themeLight = ThemeData(
  primaryColorLight: Color.fromARGB(255, 168, 0, 154),
  brightness: Brightness.light,
  primaryColor: Color.fromARGB(255, 192, 43, 185),
  highlightColor: Colors.black,
  canvasColor: Colors.white,
  fontFamily: fontFamily,
  backgroundColor: Colors.white,
  splashColor: Colors.transparent,
  scaffoldBackgroundColor: Colors.white,
  colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.pink).copyWith(
    secondary: Colors.black,
    brightness: Brightness.light,
  ),
);

final themeDark = ThemeData(
  brightness: Brightness.dark,
  primaryColorDark: Color.fromARGB(255, 108, 43, 192),
  primaryColor: Color.fromARGB(255, 43, 192, 180),
  highlightColor: Color.fromARGB(255, 43, 192, 68),
  canvasColor: Colors.white,
  fontFamily: fontFamily,
  splashColor: Colors.transparent,
  backgroundColor: Colors.grey[800],
  scaffoldBackgroundColor: Colors.black,
  colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.pink).copyWith(
    secondary: Color.fromARGB(255, 0, 65, 82),
    brightness: Brightness.dark,
  ),
);
