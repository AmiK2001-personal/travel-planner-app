import 'package:flutter/material.dart';
import 'package:travelplanner/pages/widgets/button_widget.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTravelsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VStack([
      "У вас нет путешествий"
          .text
          .size(20)
          .makeCentered()
          .box
          .margin(const EdgeInsets.only(bottom: 6))
          .make(),
      ButtonWidget(
        text: "Создать",
        onClick: () {
          //context.nextPage(const MyTravelDetailsPage(), null);
        },
      )
    ]).box.margin(const EdgeInsets.symmetric(horizontal: 10)).makeCentered();
  }
}
