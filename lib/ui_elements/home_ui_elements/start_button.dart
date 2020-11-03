import 'package:flutter/material.dart';
import 'package:mini_game/logics/game_difficulties.dart';
import 'package:mini_game/logics/image_splitter.dart';
import 'package:mini_game/logics/picture.dart';
import 'package:mini_game/logics/static_game_data.dart';
import 'package:provider/provider.dart';

class StartButton extends StatelessWidget {
  const StartButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PictureStore picture = Provider.of<PictureStore>(context);
    final GameDifficultiesStore difficultiesStore =
        Provider.of<GameDifficultiesStore>(context);
    return ButtonTheme(
      minWidth: 200,
      height: 70,
      child: FlatButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        color: Colors.grey[300],
        onPressed: () {
          ImageSplitter.inputImage = picture.image.toList();
          StaticGameData.difficulty =
              difficultiesStore.selectedDifficulty.nRows;
          if (picture.image != null) {
            Navigator.pushReplacementNamed(context, '/game');
          }
        },
        child: Text("Start"),
      ),
    );
  }
}
