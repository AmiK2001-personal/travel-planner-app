import 'package:flutter/material.dart';
import 'package:travelplanner/bloc/auth/bloc/auth_bloc.dart';
import 'package:travelplanner/gen/assets.gen.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/profile_widget.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      ProfileWidget(
        onClicked: () {},
      ),
      context
          .read<AuthBloc>()
          .userRepo
          .getUser()!
          .email!
          .text
          .textStyle(context.textTheme.caption!)
          .center
          .make(),
      MenuItem(
        svgImage: Assets.icons.uniconsLine.userSquare,
        label: "Профиль",
      ),
      MenuItem(
          svgImage: Assets.icons.uniconsLine.exit,
          label: "Выйти",
          iconColor: Colors.redAccent,
          onTap: () => context.read<AuthBloc>().add(const Logout()),
          textStyle: const TextStyle(color: Colors.redAccent))
    ]).box.margin(const EdgeInsets.symmetric(horizontal: 10)).make();
  }
}

class MenuItem extends StatelessWidget {
  final SvgGenImage svgImage;
  final String label;
  final void Function()? onTap;
  final TextStyle? textStyle;
  final Color? iconColor;

  const MenuItem(
      {Key? key,
      required this.svgImage,
      required this.label,
      this.onTap,
      this.textStyle,
      this.iconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HStack(
      [
        svgImage.svg(
            color: iconColor ?? Theme.of(context).primaryColor, width: 32),
        label.text
            .size(16)
            .textStyle((textStyle ?? context.textTheme.button)!)
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
