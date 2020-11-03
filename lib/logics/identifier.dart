import 'package:mini_game/logics/static_game_data.dart';

class Identifier {
  List<int> _ids;

  Identifier() {
    _ids = List.generate(StaticGameData.difficulty, (index) => index);
    _ids.shuffle();
  }

  int identify({id}) {
    return _ids.elementAt(id) % (StaticGameData.difficulty ~/ 2);
  }
}
