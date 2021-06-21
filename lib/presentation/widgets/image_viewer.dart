import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class ImageViewer extends StatefulWidget {
  final ImageProvider<Object> imageProvider;

  const ImageViewer({Key? key, required this.imageProvider}) : super(key: key);

  @override
  _ImageViewerState createState() => _ImageViewerState();
}

class _ImageViewerState extends State<ImageViewer> {
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "imageViewer",
      child: PhotoView(
        imageProvider: widget.imageProvider,
      ),
    ); // TODO! Hero
  }
}
