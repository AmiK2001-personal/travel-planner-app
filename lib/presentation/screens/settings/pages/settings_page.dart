import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;
import 'package:travelplanner/presentation/screens/signup/bloc/auth_bloc.dart';
import 'package:travelplanner/presentation/services/theme_service.dart';
import 'package:travelplanner/presentation/utils/assets.gen.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/profile_widget.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  ThemeService themeService = Get.find();

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      ProfileWidget(
        onClicked: () {},
      ),
      "Email: ${context.read<AuthBloc>().userRepo.getUser()!.email}"
          .text
          .subtitle1(context)
          .center
          .make(),
      "ID пользователя: ${context.read<AuthBloc>().userRepo.getUser()!.uid}"
          .text
          .subtitle1(context)
          .center
          .make()
          .box
          .margin(const EdgeInsets.only(bottom: 10))
          .make(),
      MenuItem(
        alignment: MainAxisAlignment.center,
        svgImage: Assets.icons.uniconsLine.paintTool,
        label: "Сменить тему",
        onTap: () => Get.find<ThemeService>().changeTheme(),
      ),
      MenuItem(
          alignment: MainAxisAlignment.center,
          svgImage: Assets.icons.uniconsLine.exit,
          label: "Выйти из аккаунта",
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
  final MainAxisAlignment? alignment;

  const MenuItem(
      {Key? key,
      required this.svgImage,
      required this.label,
      this.onTap,
      this.textStyle,
      this.iconColor,
      this.alignment})
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
      alignment: alignment ?? MainAxisAlignment.start,
    )
        .onInkTap(onTap ?? () {})
        .box
        .margin(const EdgeInsets.only(bottom: 10))
        .make();
  }
}
