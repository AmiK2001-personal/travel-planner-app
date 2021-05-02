import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

VxState SettingsPage(SettingsStore settingsStore) =>
    VxState(store: settingsStore, child: SettingsWidget());

class SettingsStore extends VxStore {}

class SettingsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        HStack(
          [
            Icon(Icons.account_box_outlined,
                color: Theme.of(context).primaryColor,
                size: context.percentWidth * 10),
            "Профиль"
                .text
                .size(16)
                .make()
                .box
                .margin(EdgeInsets.only(left: 20))
                .make(),
          ],
        ).onInkTap(() {}).box.margin(EdgeInsets.only(bottom: 10)).make(),
        HStack([
          Icon(Icons.style_outlined,
              color: Theme.of(context).primaryColor,
              size: context.percentWidth * 10),
          "Тема"
              .text
              .size(16)
              .make()
              .box
              .margin(EdgeInsets.only(left: 20))
              .make()
        ]).onInkTap(() {})
      ],
    ).box.margin(EdgeInsets.all(10)).make();
  }
}
