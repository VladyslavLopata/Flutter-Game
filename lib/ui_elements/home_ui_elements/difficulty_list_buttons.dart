import 'package:flutter/material.dart';
import 'package:mini_game/logics/game_difficulties.dart';
import 'package:provider/provider.dart';

import 'game_difficulty_button.dart';

class DifficultyListButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final GameDifficultiesStore difficultiesStore =
        Provider.of<GameDifficultiesStore>(context);
    return Row(
      children: difficultiesStore.difficulties
          .map((value) => GameDifficultyButton(value))
          .toList(),
      mainAxisAlignment: MainAxisAlignment.center,
    );
  }
}
