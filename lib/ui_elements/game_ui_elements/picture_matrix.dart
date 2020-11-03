import 'package:flutter/material.dart';
import 'package:mini_game/logics/static_game_data.dart';
import 'package:mini_game/ui_elements/game_ui_elements/picture_row.dart';

class PictureMatix extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var nCols = StaticGameData.rootDifficulty;
    return Column(children: List.generate(nCols, (index) => PictureRow(index)));
  }
}
