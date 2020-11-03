import 'package:flutter/material.dart';
import 'package:mini_game/logics/game_data.dart';
import 'package:mini_game/logics/static_game_data.dart';
import 'package:provider/provider.dart';

class PictureRow extends StatelessWidget {
  PictureRow(this.rowId);
  final int rowId;
  @override
  Widget build(BuildContext context) {
    final nRows = StaticGameData.rootDifficulty;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: Provider.of<GameDataStore>(context)
            .pictureParts
            .getRange(rowId * nRows, (rowId + 1) * nRows)
            .map(
              (e) => Padding(
                padding: const EdgeInsets.all(1.0),
                child: Container(
                  width: (MediaQuery.of(context).size.width / 2) / nRows,
                  height: (MediaQuery.of(context).size.height) / nRows - 10,
                  child: e,
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
