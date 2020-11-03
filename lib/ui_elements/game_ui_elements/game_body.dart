import 'package:flutter/material.dart';
import 'package:mini_game/logics/game_data.dart';

import 'package:mini_game/ui_elements/game_ui_elements/game_board.dart';
import 'package:provider/provider.dart';

import 'controls.dart';

class GameBody extends StatefulWidget {
  @override
  _GameBodyState createState() => _GameBodyState();
}

class _GameBodyState extends State<GameBody> {
  List<int> picture;

  double difficulty;

  @override
  Widget build(BuildContext context) {
    return Provider<GameDataStore>(
      create: (_) => GameDataStore(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Row(
          children: [
            Controls(),
            GameBoard(),
          ],
        ),
      ),
    );
  }
}
