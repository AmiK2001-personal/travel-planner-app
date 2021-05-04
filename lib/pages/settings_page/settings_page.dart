import 'package:flutter/material.dart';
import 'package:travel_planner_app/gen/assets.gen.dart';
import 'package:velocity_x/velocity_x.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      MenuItem(
        svgImage: Assets.icons.uniconsLine.userSquare,
        label: "Профиль",
      ),
      MenuItem(
        svgImage: Assets.icons.uniconsLine.paintTool,
        label: "Тема",
      )
    ]).box.margin(const EdgeInsets.symmetric(horizontal: 10)).make();
  }
}

class MenuItem extends StatelessWidget {
  final SvgGenImage svgImage;
  final String label;
  final void Function()? onTap;

  const MenuItem(
      {Key? key, required this.svgImage, required this.label, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HStack(
      [
        svgImage.svg(color: Theme.of(context).primaryColor, width: 32),
        label.text
            .size(16)
            .make()
            .box
            .margin(const EdgeInsets.only(left: 20))
            .make(),
      ],
    )
        .onInkTap(onTap ?? () {})
        .box
        .margin(const EdgeInsets.only(bottom: 10))
        .make();
  }
}
