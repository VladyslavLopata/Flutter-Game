import 'package:flutter/material.dart';
import 'package:mini_game/ui_elements/game_ui_elements/controls/item_counter.dart';

import 'controls/timer.dart';

class Controls extends StatefulWidget {
  @override
  _ControlsState createState() => _ControlsState();
}

class _ControlsState extends State<Controls> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Timer(),
        ItemCounter(),
      ],
    );
  }
}
