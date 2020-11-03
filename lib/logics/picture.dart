import 'package:image_picker_web/image_picker_web.dart';

import 'package:mobx/mobx.dart';

part 'picture.g.dart';

class PictureStore = _Picture with _$PictureStore;

enum StoreState { initital, loaded }

abstract class _Picture with Store {
  @observable
  List<int> image;

  @computed
  StoreState get state {
    if (image == null) {
      return StoreState.initital;
    } else {
      return StoreState.loaded;
    }
  }

  @action
  Future<void> selectFile() async {
    image = await ImagePickerWeb.getImage(outputType: ImageType.bytes);
  }
}
