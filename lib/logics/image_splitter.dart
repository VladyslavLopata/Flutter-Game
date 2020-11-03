import 'package:image/image.dart' as imglib;
import 'package:mini_game/logics/identifier.dart';
import 'package:mini_game/logics/static_game_data.dart';
import 'package:mini_game/ui_elements/game_ui_elements/image_number.dart';

class ImageSplitter {
  static List<int> inputImage;

  static List<ImageNumber> splitImage(Identifier identifier) {
    final difficulty = StaticGameData.rootDifficulty;
    imglib.Image image = imglib.decodeImage(inputImage);

    final int xLength = (image.width / difficulty).round();
    final int yLength = (image.height / difficulty).round();
    List<imglib.Image> pieceList = List<imglib.Image>();

    for (int y = 0; y < yLength * difficulty; y += yLength)
      for (int x = 0; x < xLength * difficulty; x += xLength) {
        pieceList.add(
          imglib.copyCrop(image, x, y, xLength, yLength),
        );
      }

    //Convert image from image package to Image Widget to display
    List<ImageNumber> outputImageList = List<ImageNumber>();
    for (int i = 0; i < pieceList.length; i++) {
      outputImageList.add(ImageNumber(
        i,
        identifier.identify(id: i),
        imglib.encodeJpg(pieceList.elementAt(i)),
      ));
    }

    return outputImageList;
  }
}
