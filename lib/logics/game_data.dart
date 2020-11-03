import 'dart:async';

import 'package:mini_game/logics/identifier.dart';
import 'package:mini_game/logics/image_splitter.dart';
import 'package:mini_game/logics/static_game_data.dart';
import 'package:mini_game/ui_elements/game_ui_elements/image_number.dart';
import 'package:mobx/mobx.dart';

part 'game_data.g.dart';

class GameDataStore = _GameData with _$GameDataStore;

abstract class _GameData with Store {
  List<ImageNumber> pictureParts;
  ObservableList<int> opened;
  ObservableList<int> turned;

  Identifier identifier;

  @observable
  int timePassed;

  Timer timer;

  DateTime initialTime;

  _GameData() {
    initialTime = DateTime.now();
    identifier = Identifier();
    opened = ObservableList();
    turned = ObservableList();
    pictureParts = ImageSplitter.splitImage(identifier);
    timer = new Timer.periodic(new Duration(milliseconds: 30), callback);
    this.pictureParts = pictureParts;
  }

  @action
  void onOpen(int id) {
    opened.add(id);
    if (opened.length >= 2) {
      if (identifier.identify(id: opened.elementAt(0)) ==
          identifier.identify(id: opened.elementAt(1))) {
        turned.add(opened.elementAt(0));
        turned.add(opened.elementAt(1));
      }
      opened.removeAt(0);
    }
    if (turned.length == StaticGameData.difficulty) {
      timer.cancel();
    }
  }

  @action
  void callback(Timer timer) {
    timePassed = getTimePassed();
  }

  int getTimePassed() {
    return DateTime.now().difference(initialTime).inSeconds;
  }
}
