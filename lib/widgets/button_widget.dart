import 'package:flutter/material.dart';
import 'package:travel_planner_app/utilities/constraints.dart';
import 'package:velocity_x/velocity_x.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final Function onClick;

  const ButtonWidget({Key key, this.onClick, this.text}) : super(key: key);

  //ButtonWidget({this.btnText, this.onClick});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: text.text
          .textStyle(
            TextStyle(
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
      onTap: onClick,
    );
  }
}
