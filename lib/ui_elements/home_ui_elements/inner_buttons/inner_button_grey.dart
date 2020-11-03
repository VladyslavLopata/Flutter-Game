import 'package:flutter/material.dart';

import 'inner_button.dart';

class InnerButtonGrey extends InnerButton {
  const InnerButtonGrey({
    @required difficulty,
    Key key,
  }) : super(key: key, difficulty: difficulty);
  @override
  Color pickColor() {
    return Colors.grey[300];
  }
}
