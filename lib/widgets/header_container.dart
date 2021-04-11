import 'package:flutter/material.dart';
import 'package:travel_planner_app/utilities/constraints.dart';
import 'package:velocity_x/velocity_x.dart';

class HeaderContainer extends StatelessWidget {
  var text = "Login";

  HeaderContainer(this.text);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Icon(Icons.card_travel_outlined)
            .iconColor(Colors.indigoAccent)
            .iconSize(context.percentWidth * 35)
            .p(16)
            .card
            .elevation(8)
            .circular
            .white
            .make()
            .centered(),
        text.text
            .textStyle(TextStyle(color: Colors.white, fontSize: 20))
            .make()
            .positioned(bottom: 10, right: 10)
      ],
    )
        .box
        .height(context.percentHeight * 35)
        .withDecoration(BoxDecoration(
            gradient: LinearGradient(
                colors: [primaryColor, secondaryColor],
                end: Alignment.bottomCenter,
                begin: Alignment.topCenter),
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30))))
        .makeCentered();
  }
}
