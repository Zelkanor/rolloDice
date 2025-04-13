import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:rollodice/core/router/app_routes.dart';

final routeProvider = Provider((ref) {
  return GoRouter(
    routes: <RouteBase>[
      GoRoute(
        name: Approutes.home.name,
        path: Approutes.home.path,
        builder: (context, state) => Approutes.home.page,
      ),
    ],
  );
});
