import 'package:flutter/material.dart';

import 'inner_button.dart';

class InnerButtonGreen extends InnerButton {
  const InnerButtonGreen({
    @required difficulty,
    Key key,
  }) : super(key: key, difficulty: difficulty);
  @override
  Color pickColor() {
    return Colors.green[300];
  }
}
