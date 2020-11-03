import 'package:flutter/material.dart';
import 'package:mini_game/logics/game_data.dart';
import 'package:mini_game/ui_elements/game_ui_elements/picture_row.dart';
import 'package:provider/provider.dart';

class PictureMatix extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var nCols = Provider.of<GameDataStore>(context).difficulty;
    return Column(children: List.generate(nCols, (index) => PictureRow(index)));
  }
}
