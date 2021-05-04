import 'package:flutter/material.dart';
import 'package:travel_planner_app/utilities/constraints.dart';
import 'package:velocity_x/velocity_x.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final void Function()? onClick;

  const ButtonWidget({Key? key, required this.text, this.onClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: text.text
          .textStyle(
            const TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          )
          .make()
          .box
          .width(double.infinity)
          .height(40)
          .withGradient(LinearGradient(
              colors: [primaryColor, secondaryColor],
              end: Alignment.centerLeft,
              begin: Alignment.centerRight))
          .alignCenter
          .make()
          .cornerRadius(30),
    );
  }
}
