import 'package:mini_game/logics/game_difficulty.dart';
import 'package:mobx/mobx.dart';

part 'game_difficulties.g.dart';

class GameDifficultiesStore = _GameDifficulties with _$GameDifficultiesStore;

abstract class _GameDifficulties with Store {
  List<GameDifficulty> difficulties;

  _GameDifficulties() {
    difficulties =
        [16, 36, 64, 100, 196, 256].map((e) => GameDifficulty(e)).toList();
    selectedDifficulty = difficulties.elementAt(0);
  }

  @observable
  GameDifficulty selectedDifficulty;

  @computed
  GameDifficulty get getSelectedDifficulty => selectedDifficulty;

  @action
  void selectDifficulty(GameDifficulty difficulty) {
    try {
      selectedDifficulty = difficulty;
    } catch (e) {
      print(e);
      selectedDifficulty = null;
    }
  }
}
