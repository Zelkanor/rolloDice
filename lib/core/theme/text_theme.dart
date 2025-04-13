import 'package:flutter/material.dart';

class KTextTheme {
  KTextTheme._();

  static const TextTheme lightTextTheme = TextTheme(
    headlineLarge: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
  );

  static const TextTheme darkTextTheme = TextTheme(
    headlineLarge: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
  );
}
