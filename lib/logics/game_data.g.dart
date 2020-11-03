// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_data.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$GameDataStore on _GameData, Store {
  final _$timePassedAtom = Atom(name: '_GameData.timePassed');

  @override
  int get timePassed {
    _$timePassedAtom.reportRead();
    return super.timePassed;
  }

  @override
  set timePassed(int value) {
    _$timePassedAtom.reportWrite(value, super.timePassed, () {
      super.timePassed = value;
    });
  }

  final _$_GameDataActionController = ActionController(name: '_GameData');

  @override
  void onOpen(dynamic id, dynamic context) {
    final _$actionInfo =
        _$_GameDataActionController.startAction(name: '_GameData.onOpen');
    try {
      return super.onOpen(id, context);
    } finally {
      _$_GameDataActionController.endAction(_$actionInfo);
    }
  }

  @override
  void callback(Timer timer) {
    final _$actionInfo =
        _$_GameDataActionController.startAction(name: '_GameData.callback');
    try {
      return super.callback(timer);
    } finally {
      _$_GameDataActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
timePassed: ${timePassed}
    ''';
  }
}
