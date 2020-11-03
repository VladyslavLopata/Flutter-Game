import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mini_game/logics/picture.dart';
import 'package:provider/provider.dart';

class ImageStatus extends StatelessWidget {
  const ImageStatus({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PictureStore picture = Provider.of<PictureStore>(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: Observer(
        builder: (_) {
          switch (picture.state) {
            case StoreState.initital:
              return Text("No image yet");
              break;

            case StoreState.loaded:
              return Text("Image is loaded");
              break;
          }
          return Text("Error while loading image...");
        },
      ),
    );
  }
}
