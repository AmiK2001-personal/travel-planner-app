import 'package:flutter/material.dart';
import 'package:travelplanner/utilities/constraints.dart';
import 'package:velocity_x/velocity_x.dart';

class HeaderContainer extends StatelessWidget {
  @required
  final String text;

  const HeaderContainer({Key? key, this.text = ""}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Icon(Icons.card_travel_outlined)
            .iconColor(Colors.indigoAccent)
            .iconSize(context.percentWidth * 35)
            .p(16)
            .card
            .elevation(8)
            .circular
            .white
            .make()
            .box
            .shadow
            .withRounded(value: 90)
            .make()
            .centered(),
        text.text
            .textStyle(const TextStyle(color: Colors.white, fontSize: 20))
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
            borderRadius:
                const BorderRadius.only(bottomLeft: Radius.circular(30))))
        .makeCentered();
  }
}
