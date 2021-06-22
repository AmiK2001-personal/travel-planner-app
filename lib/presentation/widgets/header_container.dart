import 'package:flutter/material.dart';
import 'package:travelplanner/presentation/widgets/blur_container.dart';
import 'package:velocity_x/velocity_x.dart';

class HeaderContainer extends StatelessWidget {
  @required
  final String text;

  const HeaderContainer({Key? key, this.text = ""}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BlurContainer(
          blurColor: Colors.indigoAccent,
          child: const Icon(Icons.card_travel_outlined)
              .iconColor(Colors.indigoAccent)
              .iconSize(context.percentWidth * 30)
              .p(16)
              .card
              .elevation(8)
              .rounded
              .white
              .make()
              .centered(),
        ),
      ],
    )
        .box
        .height(context.percentHeight * 35)
        .withDecoration(BoxDecoration(
            gradient: LinearGradient(
                colors: [context.theme.primaryColor, context.theme.accentColor],
                end: Alignment.bottomCenter,
                begin: Alignment.topCenter),
            borderRadius:
                const BorderRadius.only(bottomLeft: Radius.circular(30))))
        .makeCentered();
  }
}
