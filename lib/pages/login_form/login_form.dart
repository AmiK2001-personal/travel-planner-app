import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_planner_app/bloc/menu_page/menu_page_bloc.dart';
import 'package:travel_planner_app/gen/assets.gen.dart';
import 'package:travel_planner_app/pages/menu_page/menu_page.dart';
import 'package:travel_planner_app/pages/register_form/registration_page.dart';
import 'package:travel_planner_app/utilities/constraints.dart';
import 'package:travel_planner_app/pages/widgets/button_widget.dart';
import 'package:travel_planner_app/pages/widgets/header_container.dart';
import 'package:travel_planner_app/pages/widgets/tp_text_field.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          const HeaderContainer(text: "Войти в приложение"),
          Column(
            children: [
              Column(
                children: [
                  TpTextField(
                      hint: "Логин",
                      icon: Assets.icons.uniconsLine.user.svg(),
                      borderColor: Theme.of(context).accentColor),
                  TpTextField(
                      hint: "Пароль",
                      icon: Assets.icons.uniconsLine.keySkeleton.svg(),
                      borderColor: Theme.of(context).accentColor),
                ]
                    .map(
                      (e) => e.box
                          .padding(const EdgeInsets.only(bottom: 15))
                          .make(),
                    )
                    .toList(),
              ),
              ButtonWidget(
                onClick: () {
                  context.nextPage(BlocProvider(
                    create: (context) => MenuPageBloc(),
                    child: MenuPage(),
                  ));
                },
                text: "Войти",
              ).box.shadow.withRounded(value: 30).make().centered(),
              Align(
                alignment: Alignment.bottomCenter,
                child: HStack([
                  "У вас нет аккаунта?"
                      .text
                      .textStyle(const TextStyle(color: Colors.black))
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
                ]),
              )
            ],
          )
              .box
              .margin(const EdgeInsets.only(left: 20, right: 20, top: 30))
              .make(),
        ],
      ).box.padding(const EdgeInsets.only(bottom: 30)).make(),
    ));
  }
}
