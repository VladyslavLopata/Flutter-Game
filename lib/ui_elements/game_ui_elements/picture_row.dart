import 'package:flutter/material.dart';
import 'package:mini_game/logics/game_data.dart';
import 'package:provider/provider.dart';

class PictureRow extends StatelessWidget {
  PictureRow(this.rowId);
  final int rowId;
  @override
  Widget build(BuildContext context) {
    final nRows = Provider.of<GameDataStore>(context).difficulty;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 1),
      child: Row(
        children: Provider.of<GameDataStore>(context)
            .pictureParts
            .getRange(rowId * nRows, (rowId + 1) * nRows)
            .toList(),
      ),
    );
  }
}
