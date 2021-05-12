import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_planner_app/bloc/menu_page/menu_page_bloc.dart';
import 'package:travel_planner_app/gen/assets.gen.dart';
import 'package:travel_planner_app/network/rest_client.dart';
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
  final TextEditingController _loginController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

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
                      controller: _loginController,
                      icon: Assets.icons.uniconsLine.user.svg(),
                      borderColor: Theme.of(context).accentColor),
                  TpTextField(
                      controller: _passwordController,
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
                onClick: () async {
                  final isPasswordMatch = await RestClient.accounts
                      .passwordMatch(
                          login: _loginController.text,
                          password: _passwordController.text);

                  if (isPasswordMatch) {
                    context.nextPage(
                      BlocProvider(
                        create: (context) => MenuPageBloc(),
                        child: MenuPage(),
                      ),
                    );
                  } else {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text("Ошибка"),
                          content: SingleChildScrollView(
                            child: ListBody(
                              children: const [
                                Text("Пароль не верный"),
                              ],
                            ),
                          ),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('ОК'),
                            ),
                          ],
                        );
                      },
                    );
                  }
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
