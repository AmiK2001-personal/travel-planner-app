import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:velocity_x/velocity_x.dart';

Widget buildPlaceholder(BuildContext context) {
  return VStack(
    [
      Icon(
        Icons.build_circle,
        size: context.percentWidth * 50,
      ).iconColor(Theme.of(context).primaryColor).build(context),
      "UNDER".text.fontWeight(FontWeight.w300).size(48).make(),
      "CONSTRUCTION".text.bold.yellow400.size(32).make(),
      "Прямо сейчас наш единственный программист упорно трудится над реализацией данного функционала."
          .text
          .size(18)
          .gray500
          .align(TextAlign.center)
          .make()
          .box
          .margin(const EdgeInsets.only(top: 20))
          .make()
    ],
    crossAlignment: CrossAxisAlignment.center,
  ).box.margin(const EdgeInsets.all(14)).makeCentered();
}
