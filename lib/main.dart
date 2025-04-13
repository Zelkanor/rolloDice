import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rollodice/core/providers/route_provider.dart';
import 'package:rollodice/core/providers/theme_provider.dart';
import 'package:rollodice/core/theme/main_theme.dart';

void main() {
  runApp(ProviderScope(child: const RolloDice()));
}

class RolloDice extends ConsumerWidget {
  const RolloDice({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routeProvider);
    final themeMode = ref.watch(themeModeProvider);
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      title: "RolloDice",
      themeMode: themeMode,
      theme: KAppTheme.lightTheme,
      darkTheme: KAppTheme.darkTheme,
    );
  }
}
