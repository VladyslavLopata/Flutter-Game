import 'package:flutter/material.dart';
import 'package:mini_game/logics/game_difficulties.dart';
import 'package:mini_game/logics/game_difficulty.dart';
import 'package:provider/provider.dart';

abstract class InnerButton extends StatelessWidget {
  const InnerButton({
    @required this.difficulty,
    Key key,
  }) : super(key: key);
  final GameDifficulty difficulty;

  Color pickColor();

  @override
  Widget build(BuildContext context) {
    final GameDifficultiesStore store =
        Provider.of<GameDifficultiesStore>(context);
    return FlatButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      color: pickColor(),
      onPressed: () {
        store.selectDifficulty(difficulty);
      },
      child: Text("${difficulty.nRows}"),
    );
  }
}
