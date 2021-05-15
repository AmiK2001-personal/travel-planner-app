import 'package:flutter/material.dart';
import 'package:travelplanner/gen/assets.gen.dart';
import 'package:travelplanner/utilities/constraints.dart';
import 'package:travelplanner/pages/widgets/header_container.dart';
import 'package:travelplanner/pages/widgets/tp_text_field.dart';
import 'package:velocity_x/velocity_x.dart';

class RegPage extends StatefulWidget {
  @override
  _RegPageState createState() => _RegPageState();
}

class _RegPageState extends State<RegPage> {
  final TextEditingController _loginController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _surnameController = TextEditingController();
  final TextEditingController _patronymicController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();

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
                    LoginField(
                      controller: _loginController,
                    ),
                    PasswordField(
                      controller: _passwordController,
                    ),
                    NameField(
                      controller: _nameController,
                    ),
                    SurnameField(
                      controller: _surnameController,
                    ),
                    PatronymicField(
                      controller: _patronymicController,
                    ),
                    AgeField(
                      controller: _ageController,
                    )
                  ]
                      .map(
                        (e) => e.pOnly(bottom: 15),
                      )
                      .toList(),
                ),
                // Expanded(
                //   child: Center(
                //     child: ButtonWidget(
                //       text: "ЗАРЕГЕСТРИРОВАТЬ",
                //       onClick: () async {
                //         final registrationResponce = await RestClient.accounts
                //             .registerAccount(
                //                 login: _loginController.text,
                //                 password: _passwordController.text,
                //                 firstname: _nameController.text,
                //                 lastname: _surnameController.text,
                //                 age: int.tryParse(_ageController.text) ?? 0);

                //         showDialog(
                //           context: context,
                //           builder: (context) {
                //             return AlertDialog(
                //               title: Text(registrationResponce!.isLeft()
                //                   ? "Успех"
                //                   : "Ошибка"),
                //               content: SingleChildScrollView(
                //                 child: ListBody(
                //                   children: <Widget>[
                //                     Text(registrationResponce.fold(
                //                         (acc) =>
                //                             "Аккаунт успешно зарегестрирван",
                //                         (err) => err.toString())),
                //                   ],
                //                 ),
                //               ),
                //               actions: <Widget>[
                //                 TextButton(
                //                   onPressed: () {
                //                     Navigator.of(context).pop();
                //                   },
                //                   child: const Text('ОК'),
                //                 ),
                //               ],
                //             );
                //           },
                //         );
                //       },
                //     ),
                //   ),
                // ),
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
}

class LoginField extends StatelessWidget {
  final TextEditingController? controller;

  const LoginField({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TpTextField(
      controller: controller,
      hint: "Логин",
      icon: Assets.icons.uniconsLine.user.svg(),
      borderColor: Theme.of(context).accentColor,
    );
  }
}

class AgeField extends StatelessWidget {
  final TextEditingController? controller;

  const AgeField({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TpTextField(
      controller: controller,
      hint: "Возраст",
      icon: Assets.icons.uniconsLine.userSquare.svg(),
      borderColor: Theme.of(context).accentColor,
    );
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

class PhoneNumberField extends StatelessWidget {
  const PhoneNumberField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TpTextField(
      hint: "Номер телефона",
      icon: Assets.icons.uniconsLine.phoneAlt.svg(),
      borderColor: Theme.of(context).accentColor,
    );
  }
}

class EmailField extends StatelessWidget {
  const EmailField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TpTextField(
      hint: "Email",
      icon: Assets.icons.uniconsLine.mailboxAlt.svg(),
      borderColor: Theme.of(context).accentColor,
    );
  }
}

class SurnameField extends StatelessWidget {
  final TextEditingController? controller;

  const SurnameField({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TpTextField(
      controller: controller,
      hint: "Фамилия",
      icon: Assets.icons.uniconsLine.userSquare.svg(),
      borderColor: Theme.of(context).accentColor,
    );
  }
}

class NameField extends StatelessWidget {
  final TextEditingController? controller;

  const NameField({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TpTextField(
      controller: controller,
      hint: "Имя",
      icon: Assets.icons.uniconsLine.userSquare.svg(),
      borderColor: Theme.of(context).accentColor,
    );
  }
}

class PatronymicField extends StatelessWidget {
  final TextEditingController? controller;

  const PatronymicField({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TpTextField(
      controller: controller,
      hint: "Отчество",
      icon: Assets.icons.uniconsLine.userSquare.svg(),
      borderColor: Theme.of(context).accentColor,
    );
  }
}
