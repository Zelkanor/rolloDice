// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart' show Widget;
import 'package:rollodice/screens/Home/home_screen.dart';

class RouteConfig {
  final String path;
  final String name;
  final Widget page;
  const RouteConfig({
    required this.path,
    required this.name,
    required this.page,
  });
}

class Approutes {
  Approutes._();

  static const RouteConfig home = RouteConfig(
    path: "/",
    name: "home",
    page: HomeScreen(),
  );
}
