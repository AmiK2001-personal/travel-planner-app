import 'dart:ui';

import 'package:image/image.dart' as img;

extension ImageExt on Image {
  Future<Color?> averageColor() async {
    final bitmap = img.decodeImage((await toByteData())!.buffer.asUint8List());

    if (bitmap != null) {
      int redBucket = 0;
      int greenBucket = 0;
      int blueBucket = 0;
      int pixelCount = 0;

      for (int y = 0; y < bitmap.height; y++) {
        for (int x = 0; x < bitmap.width; x++) {
          final int c = bitmap.getPixel(x, y);

          pixelCount++;
          redBucket += img.getRed(c);
          greenBucket += img.getGreen(c);
          blueBucket += img.getBlue(c);
        }
      }

      return Color.fromRGBO(redBucket ~/ pixelCount, greenBucket ~/ pixelCount,
          blueBucket ~/ pixelCount, 1);
    }
  }
}
