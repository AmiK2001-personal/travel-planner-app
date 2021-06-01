import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:travelplanner/bloc/auth/bloc/auth_bloc.dart';
import 'package:travelplanner/gen/assets.gen.dart';
import 'package:travelplanner/pages/widgets/button_widget.dart';
import 'package:travelplanner/pages/widgets/header_container.dart';
import 'package:travelplanner/pages/widgets/tp_text_field.dart';
import 'package:travelplanner/utilities/constraints.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegPage extends StatefulWidget {
  @override
  _RegPageState createState() => _RegPageState();
}

class _RegPageState extends State<RegPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        const HeaderContainer(text: "Регистрация"),
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: ListView(
              children: [
                VStack(
                  [
                    EmailField(
                      controller: _emailController,
                    ),
                    PasswordField(
                      controller: _passwordController,
                    ),
                  ]
                      .map(
                        (e) => e.pOnly(bottom: 15),
                      )
                      .toList(),
                ),
                Center(
                    child: ButtonWidget(
                  text: "ЗАРЕГЕСТРИРОВАТЬ",
                  onClick: () {
                    context.read<AuthBloc>().add(
                          CreateUserWithEmailAndPassword(
                              _emailController.text, _passwordController.text),
                        );
                  },
                )).box.padding(const EdgeInsets.only(bottom: 8)).make(),
                //buildGoogleRegister(context).centered(),
                HStack(
                  [
                    const Text("Есть аккаунт? ",
                        style: TextStyle(color: Colors.black)),
                    TextButton(
                      onPressed: () {
                        context.pop();
                      },
                      child: "Войти"
                          .text
                          .textStyle(TextStyle(color: primaryColor))
                          .make(),
                    )
                  ],
                  alignment: MainAxisAlignment.center,
                ).box.alignBottomCenter.make(),
              ],
            ),
          ),
        ),
      ]),
    );
  }

  HStack buildGoogleRegister(BuildContext context) {
    return HStack([
      "Зарегестрироваться через Google".text.size(18).make(),
      IconButton(
        icon: Assets.icons.uniconsMonochrome.google.svg(width: 48),
        onPressed: () {},
      )
          .box
          .margin(const EdgeInsets.only(left: 8))
          .border(color: context.theme.primaryColor)
          .roundedFull
          .make()
    ]);
  }
}

class PasswordField extends StatelessWidget {
  final TextEditingController? controller;

  const PasswordField({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TpTextField(
      controller: controller,
      hint: "Пароль",
      icon: Assets.icons.uniconsLine.keySkeleton.svg(),
      onChanged: (value) {},
    );
  }
}

class EmailField extends StatelessWidget {
  const EmailField({
    Key? key,
    this.controller,
  }) : super(key: key);

  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TpTextField(
      controller: controller,
      hint: "Email",
      icon: Assets.icons.uniconsLine.mailboxAlt.svg(),
      borderColor: Theme.of(context).accentColor,
    );
  }
}
