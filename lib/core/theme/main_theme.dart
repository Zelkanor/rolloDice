import 'package:flutter/material.dart';
import 'package:rollodice/core/theme/elevated_button_theme.dart';
import 'package:rollodice/core/theme/text_theme.dart';

class KAppTheme {
  KAppTheme._();

  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.light(
      primary: Color(0xFF355C7D),
      secondary: Color(0xFF6C5B7B),
      tertiary: Color(0xFFc06c84),
    ),
    textTheme: KTextTheme.lightTextTheme,
    elevatedButtonTheme: KElevatedButtonTheme.lightTheme,
  );

  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    colorScheme: ColorScheme.dark(
      primary: Color(0xFF0F2027),
      secondary: Color(0xFF203A43),
      tertiary: Color(0xFF2c5364),
    ),
    textTheme: KTextTheme.darkTextTheme,
    elevatedButtonTheme: KElevatedButtonTheme.darkTheme,
  );
}
