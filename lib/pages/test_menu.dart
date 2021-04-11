import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class TestMenu extends StatelessWidget {
  const TestMenu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VStack([
      "- 2 799 P".text.makeCentered(),
      MaterialButton(
        onPressed: () {},
        child: "Сохранить".text.make(),
        color: Colors.red,
      )
    ]);
  }
}
