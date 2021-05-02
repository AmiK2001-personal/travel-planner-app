import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_planner_app/pages/menu_page.dart';
import 'package:travel_planner_app/utilities/constraints.dart';
import 'package:travel_planner_app/widgets/button_widget.dart';
import 'package:travel_planner_app/widgets/header_container.dart';
import 'package:travel_planner_app/widgets/tp_text_field.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:dio/dio.dart';

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
        HeaderContainer(text: "Регистрация"),
        Expanded(
          flex: 1,
          child: Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 30),
            child: ListView(
              children: [
                VStack(
                  [
                    BlocBuilder<LastnameCubit, String>(
                      bloc: LastnameCubit(),
                      builder: (context, lastname) => TpTextField(
                        value: lastname,
                        hint: "Фамилия",
                        icon: Icons.account_box,
                        borderColor: Theme.of(context).accentColor,
                      ),
                    ),
                    BlocBuilder<PatronymicCubit, String>(
                      bloc: PatronymicCubit(),
                      builder: (context, patrobymic) => TpTextField(
                        value: patrobymic,
                        hint: "Отчество",
                        icon: Icons.account_box,
                        borderColor: Theme.of(context).accentColor,
                      ),
                    ),
                    BlocBuilder<AgeCubit, int>(
                      bloc: AgeCubit(),
                      builder: (context, age) => TpTextField(
                        hint: "Возраст",
                        icon: Icons.account_box,
                        borderColor: Theme.of(context).accentColor,
                      ),
                    ),
                    BlocBuilder<EmailCubit, String>(
                      bloc: EmailCubit(),
                      builder: (context, email) => TpTextField(
                        value: email,
                        hint: "Email",
                        icon: Icons.email,
                        borderColor: Theme.of(context).accentColor,
                      ),
                    ),
                    BlocProvider(
                      create: (context) => PhoneNumberCubit(),
                      child: BlocBuilder<PhoneNumberCubit, String>(
                        bloc: PhoneNumberCubit(),
                        builder: (context, phoneNumber) => TpTextField(
                          value: phoneNumber,
                          hint: "Phone Number",
                          icon: Icons.call,
                          borderColor: Theme.of(context).accentColor,
                        ),
                      ),
                    ),
                    BlocProvider(
                      create: (context) => PasswordCubit(),
                      child: BlocBuilder<PasswordCubit, String>(
                        builder: (context, password) => TpTextField(
                          value: password,
                          hint: "Password",
                          icon: Icons.vpn_key,
                          borderColor: isPasswordValid(password)
                              ? Theme.of(context).accentColor
                              : Colors.red,
                          onChanged: (value) {
                            context.read<PasswordCubit>().change(value);
                          },
                        ),
                      ),
                    )
                  ]
                      .map(
                        (e) => e.pOnly(bottom: 15),
                      )
                      .toList(),
                ),
                Expanded(
                  child: Center(
                    child: ButtonWidget(
                      text: "REGISTER",
                      onClick: () async {
                        // if (store.isPasswordValid) {
                        //   var reg = await store.registerAccount();
                        //   VxToast.show(context,
                        //       msg: reg.data,
                        //       bgColor: Colors.red,
                        //       textColor: Colors.white,
                        //       showTime: 5000);

                        // }
                        // context.nextPage(MenuPage());
                      },
                    ),
                  ),
                ),
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "Already a member ? ",
                        style: TextStyle(color: Colors.black)),
                    TextSpan(
                        text: "Login", style: TextStyle(color: primaryColor)),
                  ]),
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
