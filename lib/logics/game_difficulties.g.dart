// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_difficulties.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$GameDifficultiesStore on _GameDifficulties, Store {
  Computed<GameDifficulty> _$getSelectedDifficultyComputed;

  @override
  GameDifficulty get getSelectedDifficulty =>
      (_$getSelectedDifficultyComputed ??= Computed<GameDifficulty>(
              () => super.getSelectedDifficulty,
              name: '_GameDifficulties.getSelectedDifficulty'))
          .value;

  final _$selectedDifficultyAtom =
      Atom(name: '_GameDifficulties.selectedDifficulty');

  @override
  GameDifficulty get selectedDifficulty {
    _$selectedDifficultyAtom.reportRead();
    return super.selectedDifficulty;
  }

  @override
  set selectedDifficulty(GameDifficulty value) {
    _$selectedDifficultyAtom.reportWrite(value, super.selectedDifficulty, () {
      super.selectedDifficulty = value;
    });
  }

  final _$_GameDifficultiesActionController =
      ActionController(name: '_GameDifficulties');

  @override
  void selectDifficulty(GameDifficulty difficulty) {
    final _$actionInfo = _$_GameDifficultiesActionController.startAction(
        name: '_GameDifficulties.selectDifficulty');
    try {
      return super.selectDifficulty(difficulty);
    } finally {
      _$_GameDifficultiesActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectedDifficulty: ${selectedDifficulty},
getSelectedDifficulty: ${getSelectedDifficulty}
    ''';
  }
}
