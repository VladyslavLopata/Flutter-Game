import 'package:flutter/material.dart';
import 'package:mini_game/logics/game_data.dart';
import 'package:mini_game/logics/image_splitter.dart';
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
    Map arguments = ModalRoute.of(context).settings.arguments;
    picture = picture ?? arguments['picture'];
    difficulty = difficulty ?? arguments['difficulty'];
    return Provider<GameDataStore>(
      create: (_) => GameDataStore(
        ImageSplitter.splitImage(
          inputImage: picture,
          difficulty: difficulty,
        ),
        difficulty,
      ),
      child: Row(
        children: [
          Controls(),
          GameBoard(),
        ],
      ),
    );
  }
}
