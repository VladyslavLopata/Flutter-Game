// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'picture.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PictureStore on _Picture, Store {
  Computed<StoreState> _$stateComputed;

  @override
  StoreState get state => (_$stateComputed ??=
          Computed<StoreState>(() => super.state, name: '_Picture.state'))
      .value;

  final _$imageAtom = Atom(name: '_Picture.image');

  @override
  List<int> get image {
    _$imageAtom.reportRead();
    return super.image;
  }

  @override
  set image(List<int> value) {
    _$imageAtom.reportWrite(value, super.image, () {
      super.image = value;
    });
  }

  final _$selectFileAsyncAction = AsyncAction('_Picture.selectFile');

  @override
  Future<void> selectFile() {
    return _$selectFileAsyncAction.run(() => super.selectFile());
  }

  @override
  String toString() {
    return '''
image: ${image},
state: ${state}
    ''';
  }
}
