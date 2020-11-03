import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mini_game/logics/game_difficulties.dart';

import 'package:mini_game/logics/game_difficulty.dart';
import 'package:provider/provider.dart';

import 'inner_buttons/inner_button_green.dart';
import 'inner_buttons/inner_button_grey.dart';

class GameDifficultyButton extends StatefulWidget {
  GameDifficultyButton(
    this.difficulty, {
    Key key,
  }) : super(key: key);
  final GameDifficulty difficulty;

  @override
  _GameDifficultyButtonState createState() => _GameDifficultyButtonState();
}

class _GameDifficultyButtonState extends State<GameDifficultyButton> {
  @override
  Widget build(BuildContext context) {
    final GameDifficultiesStore store =
        Provider.of<GameDifficultiesStore>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: ButtonTheme(
        minWidth: 60,
        height: 60,
        child: Observer(builder: (_) {
          if (widget.difficulty == store.selectedDifficulty) {
            return InnerButtonGreen(difficulty: widget.difficulty);
          } else {
            return InnerButtonGrey(difficulty: widget.difficulty);
          }
        }),
      ),
    );
  }
}
