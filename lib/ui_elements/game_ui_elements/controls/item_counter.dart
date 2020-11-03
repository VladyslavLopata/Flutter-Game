import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mini_game/logics/game_data.dart';
import 'package:mini_game/logics/static_game_data.dart';
import 'package:provider/provider.dart';

class ItemCounter extends StatefulWidget {
  @override
  ItemCounterState createState() => ItemCounterState();
}

class ItemCounterState extends State<ItemCounter> {
  @override
  Widget build(BuildContext context) {
    GameDataStore data = Provider.of<GameDataStore>(context);
    return Observer(
      builder: (_) => Column(
        children: [
          Text("Items left:"),
          Text(
              "${StaticGameData.difficulty - data.turned.length > 0 ? StaticGameData.difficulty - data.turned.length : "victory"}"),
        ],
      ),
    );
  }
}
