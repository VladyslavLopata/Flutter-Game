import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mini_game/logics/game_data.dart';
import 'package:provider/provider.dart';

class Timer extends StatefulWidget {
  @override
  _TimerState createState() => _TimerState();
}

class _TimerState extends State<Timer> {
  @override
  Widget build(BuildContext context) {
    GameDataStore data = Provider.of<GameDataStore>(context);
    return Observer(
      builder: (_) => Column(
        children: [
          Text("Time"),
          Text("${data.timePassed}"),
        ],
      ),
    );
  }
}
