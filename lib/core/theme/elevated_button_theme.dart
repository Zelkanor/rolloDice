import 'package:flutter/material.dart';

class KElevatedButtonTheme {
  KElevatedButtonTheme._();

  static final ElevatedButtonThemeData lightTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFFc06c84),
      foregroundColor: Colors.black,
      minimumSize: const Size(150, 50),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
      textStyle: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
      elevation: 4.0,
    ),
  );
  static final ElevatedButtonThemeData darkTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFF0F2027),
      foregroundColor: Colors.white,
      minimumSize: const Size(150, 50),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
      textStyle: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
      elevation: 4.0,
    ),
  );
}
