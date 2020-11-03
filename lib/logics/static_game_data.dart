import 'dart:math';

class StaticGameData {
  static int _difficulty;

  static set difficulty(difficulty) {
    StaticGameData._difficulty = difficulty;
  }

  static int get difficulty => _difficulty;

  static int get rootDifficulty => sqrt(_difficulty).toInt();
}
