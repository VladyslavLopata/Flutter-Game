import 'package:flutter/material.dart';
import 'package:mini_game/logics/picture.dart';
import 'package:mini_game/ui_elements/home_ui_elements/start_button.dart';
import 'package:provider/provider.dart';

import 'difficulty_list_buttons.dart';
import 'image_status.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final PictureStore picture = Provider.of<PictureStore>(context);
    return Center(
      child: Column(
        children: [
          Spacer(flex: 1),
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text("Please, select image you want to play:"),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 4),
            child: FlatButton(
              color: Colors.grey[300],
              onPressed: picture.selectFile,
              child: const Text("Select image..."),
            ),
          ),
          ImageStatus(),
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: const Text("Select difficulty:"),
          ),
          DifficultyListButtons(),
          Spacer(flex: 1),
          StartButton(),
          Spacer(flex: 2),
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
    );
  }
}
