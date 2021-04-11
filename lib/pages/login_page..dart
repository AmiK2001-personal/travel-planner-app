import 'package:flutter/material.dart';
import 'package:travel_planner_app/pages/registration_page.dart';
import 'package:travel_planner_app/utilities/constraints.dart';
import 'package:travel_planner_app/widgets/button_widget.dart';
import 'package:travel_planner_app/widgets/header_container.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: VStack(
        [
          HeaderContainer("Войти в приложение"),
          VStack(
            [
              _textInput(hint: "Email", icon: Icons.email),
              _textInput(hint: "Пароль", icon: Icons.vpn_key),
              // TextButton(
              //         onPressed: () {
              //           context.nextPage(RegPage());
              //         },
              //         child: "Забыли пароль?".text.make())
              //     .box
              //     .margin(EdgeInsets.only(top: 10))
              //     .alignCenterRight
              //     .make(),
              ButtonWidget(
                onClick: () {
                  context.nextPage(RegPage());
                },
                btnText: "Войти",
              ).centered().expand(),
              HStack([
                "У вас нет аккаунта?"
                    .text
                    .textStyle(TextStyle(color: Colors.black))
                    .make()
                    .pOnly(right: 5),
                TextButton(
                    onPressed: () {
                      context.nextPage(RegPage());
                    },
                    child: "Зарегестрироваться"
                        .text
                        .textStyle(TextStyle(color: primaryColor))
                        .make())
              ])
            ],
            axisSize: MainAxisSize.max,
          )
              .box
              .margin(EdgeInsets.only(left: 20, right: 20, top: 30))
              .make()
              .expand(),
        ],
      ).box.padding(EdgeInsets.only(bottom: 30)).make(),
    );
  }

  Widget _textInput({controller, hint, icon}) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: hint,
        prefixIcon: Icon(icon),
      ),
    )
        .box
        .withDecoration(BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Colors.white,
        ))
        .padding(EdgeInsets.only(left: 10))
        .margin(EdgeInsets.only(top: 10))
        .make();
  }
}
