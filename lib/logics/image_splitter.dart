import 'dart:math';

import 'package:flutter/material.dart';
import 'package:image/image.dart' as imglib;

class ImageSplitter {
  static List<Image> splitImage({
    List<int> inputImage,
    double difficulty,
  }) {
    difficulty = sqrt(difficulty);
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
    List<Image> outputImageList = List<Image>();
    for (imglib.Image img in pieceList) {
      outputImageList.add(Image.memory(
        imglib.encodeJpg(img),
        fit: BoxFit.fill,
      ));
    }

    return outputImageList;
  }
}
