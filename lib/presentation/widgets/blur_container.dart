import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class BlurContainer extends StatelessWidget {
  final Widget child;
  final Alignment alignment;
  final double blur;
  final Color blurColor;
  final Decoration? decoration;

  const BlurContainer(
      {Key? key,
      required this.child,
      this.alignment = Alignment.center,
      this.blur = 13,
      this.blurColor = Colors.white,
      this.decoration})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          child: Blur(
            blur: blur,
            colorOpacity: 0.62,
            blurColor: blurColor,
            child: Container(
              decoration: decoration,
              color: Colors.transparent,
            ).whFull(context),
          ),
        ),
        Align(alignment: alignment, child: child)
      ],
    );
  }
}
