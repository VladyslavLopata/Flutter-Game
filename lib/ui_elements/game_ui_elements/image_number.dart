import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mini_game/logics/game_data.dart';
import 'package:provider/provider.dart';

class ImageNumber extends StatelessWidget {
  ImageNumber(this.id, this.number, this.imageData);

  final int id;
  final int number;
  final List<int> imageData;

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      if (Provider.of<GameDataStore>(context).turned.contains(id)) {
        return Image.memory(
          imageData,
          fit: BoxFit.fill,
        );
      } else if (Provider.of<GameDataStore>(context).opened.contains(id)) {
        return Center(
          child: Text(
            "${number + 1}",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 40,
            ),
          ),
        );
      } else {
        return FlatButton(
          onPressed: () {
            Provider.of<GameDataStore>(context, listen: false)
                .onOpen(id, context);
          },
          child: Text(''),
        );
      }
    });
  }
}
