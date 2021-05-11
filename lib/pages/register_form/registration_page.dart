import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_planner_app/gen/assets.gen.dart';
import 'package:travel_planner_app/utilities/constraints.dart';
import 'package:travel_planner_app/pages/widgets/button_widget.dart';
import 'package:travel_planner_app/pages/widgets/header_container.dart';
import 'package:travel_planner_app/pages/widgets/tp_text_field.dart';
import 'package:velocity_x/velocity_x.dart';

// Future<Response<String>> registerAccount() async {
//   var options = BaseOptions(
//     baseUrl: "http://185.246.67.169:5001/api",
//   );
//   var dio = Dio(options);

//   return await dio.post('/accounts', data: {
//     "login": login,
//     "password": password,
//     "personalInfo": {
//       "firstname": personalInfo.firstname,
//       "lastname": personalInfo.lastname,
//       "patronymic": personalInfo.patronymic,
//       "age": personalInfo.age
//     }
//   });
// }

bool isPasswordValid(String password) => password.length > 10;

class PasswordCubit extends Cubit<String> {
  PasswordCubit() : super("");
  void change(String value) => emit(value);
}

class EmailCubit extends Cubit<String> {
  EmailCubit() : super("");
  void change(String value) => emit(value);
}

class PhoneNumberCubit extends Cubit<String> {
  PhoneNumberCubit() : super("");
  void change(String value) => emit(value);
}

class FirstnameCubit extends Cubit<String> {
  FirstnameCubit() : super("");
  void change(String value) => emit(value);
}

class LastnameCubit extends Cubit<String> {
  LastnameCubit() : super("");
  void change(String value) => emit(value);
}

class PatronymicCubit extends Cubit<String> {
  PatronymicCubit() : super("");
  void change(String value) => emit(value);
}

class AgeCubit extends Cubit<int> {
  AgeCubit() : super(0);
  void change(int value) => emit(value);
}

class LoginCubit extends Cubit<String> {
  LoginCubit() : super("");
  void change(String value) => emit(value);
}

class RegPage extends StatelessWidget {
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
                    LoginField(),
                    PasswordField(),
                    NameField(),
                    SurnameField(),
                    PatronymicField(),
                    AgeField()
                  ]
                      .map(
                        (e) => e.pOnly(bottom: 15),
                      )
                      .toList(),
                ),
                const Expanded(
                  child: Center(child: RegisterButton()),
                ),
                HStack(
                  [
                    const Text("Есть аккаунт? ",
                        style: TextStyle(color: Colors.black)),
                    TextButton(
                      onPressed: () {},
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
  const LoginField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TpTextField(
      hint: "Логин",
      icon: Assets.icons.uniconsLine.user.svg(),
      borderColor: Theme.of(context).accentColor,
    );
  }
}

class AgeField extends StatelessWidget {
  const AgeField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TpTextField(
      value: '',
      hint: "Возраст",
      icon: Assets.icons.uniconsLine.userSquare.svg(),
      borderColor: Theme.of(context).accentColor,
    );
  }
}

class RegisterButton extends StatelessWidget {
  const RegisterButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonWidget(
      text: "ЗАРЕГЕСТРИРОВАТЬ",
      onClick: () async {},
    );
  }
}

class PasswordField extends StatelessWidget {
  const PasswordField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TpTextField(
      value: "",
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
  const SurnameField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TpTextField(
      hint: "Фамилия",
      icon: Assets.icons.uniconsLine.userSquare.svg(),
      borderColor: Theme.of(context).accentColor,
    );
  }
}

class NameField extends StatelessWidget {
  const NameField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TpTextField(
      hint: "Имя",
      icon: Assets.icons.uniconsLine.userSquare.svg(),
      borderColor: Theme.of(context).accentColor,
    );
  }
}

class PatronymicField extends StatelessWidget {
  const PatronymicField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TpTextField(
      hint: "Отчество",
      icon: Assets.icons.uniconsLine.userSquare.svg(),
      borderColor: Theme.of(context).accentColor,
    );
  }
}
