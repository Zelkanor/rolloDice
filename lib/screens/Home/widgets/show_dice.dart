import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rollodice/core/providers/dice_notifier.dart';

class ShowDice extends ConsumerWidget {
  const ShowDice({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final diceState = ref.watch(diceProvider);
    return Column(
      children: [
        const SizedBox(height: 20),
        Text(
          "Roll the Dice",
          style: Theme.of(context).textTheme.headlineLarge?.apply(),
        ),
        const SizedBox(height: 20),
        Image.asset(
          "assets/images/dice-$diceState.png",
          height: 200,
          width: 200,
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () => ref.read(diceProvider.notifier).rollDice(),
          child: const Text("Roll"),
        ),
      ],
    );
  }
}
