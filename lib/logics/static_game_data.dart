import 'dart:math';

class StaticGameData {
  static int _difficulty;
  static int _timeSpent;

  static set difficulty(difficulty) {
    StaticGameData._difficulty = difficulty;
  }

  static set timeSpent(timeSpent) {
    _timeSpent = timeSpent;
  }

  static get timeSpent => _timeSpent;

  static int get difficulty => _difficulty;

  static int get rootDifficulty => sqrt(_difficulty).toInt();
}
