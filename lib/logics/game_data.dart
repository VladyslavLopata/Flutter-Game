import 'dart:async';
import 'dart:math';

import 'package:flutter/widgets.dart';
import 'package:mobx/mobx.dart';

part 'game_data.g.dart';

class GameDataStore = _GameData with _$GameDataStore;

abstract class _GameData with Store {
  List<Image> pictureParts;
  List<int> opened;
  List<int> turned;
  int difficulty;

  @observable
  int timePassed;

  Timer timer;

  DateTime initialTime;

  _GameData(List<Image> pictureParts, double difficulty) {
    initialTime = DateTime.now();
    opened = [];
    turned = [];
    this.difficulty = sqrt(difficulty).toInt();
    timer = new Timer.periodic(new Duration(milliseconds: 30), callback);
    this.pictureParts = pictureParts;
  }

  @action
  void callback(Timer timer) {
    timePassed = getTimePassed();
  }

  int getTimePassed() {
    return DateTime.now().difference(initialTime).inSeconds;
  }
}
