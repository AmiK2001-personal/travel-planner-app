import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_planner_app/widgets/background_window.dart';
import 'package:travel_planner_app/pages/register.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginSignup extends StatelessWidget {
  const LoginSignup({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VStack([
      BackgroundWindow(
        margin: EdgeInsets.only(top: context.screenHeight / 3.5),
        height: context.screenHeight,
        width: 1000,
        widgets: [
          "Приветствуем вас в планировщике путешествий."
              .text
              .textStyle(TextStyle(fontSize: 18, fontWeight: FontWeight.w600))
              .center
              .make()
              .box
              .make(),
          "Отдыхать вместе веселее!"
              .text
              .textStyle(TextStyle(fontSize: 14, color: Colors.black87))
              .center
              .make()
              .box
              .make(),
          MaterialButton(
            color: Theme.of(context).accentColor,
            child:
                "Войти".text.textStyle(TextStyle(color: Colors.white)).make(),
            onPressed: () {},
          ).wh(context.screenWidth, 48).p8().box.make(),
          OutlinedButton(
            child: "Зарегестрироваться"
                .text
                .textStyle(TextStyle(color: Theme.of(context).accentColor))
                .make(),
            onPressed: () {
              context.nextPage(Register());
            },
          ).wh(context.screenWidth, 48).p8().box.make(),
          HStack(["Войти с помощью социальных сетей".text.make()]),
          HStack(
            [
              OutlinedButton(
                child: SvgPicture.asset(
                  "assets/icons/vk.svg",
                  semanticsLabel: 'VK Logo',
                ),
                onPressed: () {},
              ).wh(context.percentWidth * 16, context.percentWidth * 14).p(4),
              OutlinedButton(
                child: SvgPicture.asset(
                  "assets/icons/google.svg",
                  semanticsLabel: 'Google Logo',
                ),
                onPressed: () {},
              ).wh(context.percentWidth * 16, context.percentWidth * 14).p(4)
            ],
          ).p8(),
          TextButton(
            child: "ПРОПУСТИТЬ".text.make(),
            onPressed: () {},
          ),
        ],
      ),
    ]);
  }
}
