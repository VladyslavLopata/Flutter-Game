import 'package:flutter/material.dart';
import 'package:mini_game/ui_elements/game_ui_elements/game_body.dart';

class Game extends StatefulWidget {
  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GameBody(),
    );
  }
}
