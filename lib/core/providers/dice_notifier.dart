import 'dart:math';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DiceNotifier extends StateNotifier<int> {
  DiceNotifier() : super(1);

  void rollDice() {
    int randomNumber = Random().nextInt(6) + 1;
    state = randomNumber;
  }
}

final diceProvider = StateNotifierProvider<DiceNotifier, int>((ref) {
  return DiceNotifier();
});
