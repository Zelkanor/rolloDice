import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rollodice/core/extensions/theme_extensions.dart';
import 'package:rollodice/core/providers/theme_provider.dart';
import 'package:rollodice/screens/Home/widgets/show_dice.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child:
            context.isDarkMode ? Icon(Icons.dark_mode) : Icon(Icons.light_mode),
        onPressed:
            () =>
                ref.read(themeModeProvider.notifier).state =
                    context.isDarkMode ? ThemeMode.light : ThemeMode.dark,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
            colors: [
              Theme.of(context).colorScheme.primary,
              Theme.of(context).colorScheme.secondary,
              Theme.of(context).colorScheme.tertiary,
            ],
          ),
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ShowDice()],
        ),
      ),
    );
  }
}
