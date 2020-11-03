import 'package:flutter/material.dart';
import 'package:mini_game/logics/game_difficulties.dart';
import 'package:mini_game/logics/picture.dart';
import 'package:mini_game/routes/game.dart';
import 'package:mini_game/routes/home.dart';
import 'package:mini_game/routes/victory.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(Provider<GameDifficultiesStore>(
    create: (context) => GameDifficultiesStore(),
    child: Provider<PictureStore>(
      create: (context) => PictureStore(),
      child: MaterialApp(
        routes: {
          '/': (context) => HomePage(),
          '/game': (context) => Game(),
          '/victory': (context) => Victory(),
        },
      ),
    ),
  ));
}
