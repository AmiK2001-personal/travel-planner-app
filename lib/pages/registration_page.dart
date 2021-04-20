import 'package:flutter/material.dart';
import 'package:travel_planner_app/models/accounts.dart';
import 'package:travel_planner_app/pages/menu_page.dart';
import 'package:travel_planner_app/utilities/constraints.dart';
import 'package:travel_planner_app/widgets/button_widget.dart';
import 'package:travel_planner_app/widgets/header_container.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:dio/dio.dart';

class RegPageStore extends VxStore {
  String login;
  String password;
  bool isPasswordValid = false;
}

class ValidatePassword extends VxMutation<RegPageStore> {
  @override
  perform() {
    if (store.password.isNotEmpty && store.password.length > 8) {
      store.isPasswordValid = true;
    } else {
      store.isPasswordValid = false;
    }
  }
}

VxState RegPage() => VxState(
      store: RegPageStore(),
      child: RegistrationWidget(),
    );

class RegistrationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Define when this widget should re render
    VxState.watch(context, on: [ValidatePassword]);

    // Get access to the store
    RegPageStore store = VxState.store;

    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(bottom: 30),
        child: Column(
          children: <Widget>[
            HeaderContainer(text: "Register"),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 30),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    VxTextField(
                      value: store.login,
                      hint: "Fullname",
                      icon: Icon(Icons.email),
                    ),
                    // _textInput(hint: "Fullname", icon: Icons.person),
                    _textInput(
                        hint: "Email",
                        icon: Icons.email,
                        borderColor: Colors.blue),
                    _textInput(
                        hint: "Phone Number",
                        icon: Icons.call,
                        borderColor: Colors.blue),
                    VxTextField(
                      value: store.password,
                      hint: "Password",
                      icon: Icon(Icons.vpn_key),
                      borderColor:
                          store.isPasswordValid ? Colors.blue : Colors.red,
                      onChanged: (value) {
                        store.password = value;
                        ValidatePassword();
                      },
                    ),
                    Expanded(
                      child: Center(
                        child: ButtonWidget(
                          text: "REGISTER",
                          onClick: () {
                            //registerAccount("test", "test");
                            context.nextPage(MenuPage());
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
                            text: "Login",
                            style: TextStyle(color: primaryColor)),
                      ]),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _textInput({controller, hint, icon, borderColor}) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: Colors.red, style: BorderStyle.none, width: 0.5),
          borderRadius: BorderRadius.circular(30),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
              color: borderColor, style: BorderStyle.none, width: 0.5),
          borderRadius: BorderRadius.circular(30),
        ),
        hintText: hint,
        prefixIcon: Icon(icon),
      ),
    ).box.margin(EdgeInsets.all(10)).make();
  }
}

// class _RegPageState extends State<RegPage> {
// Future<Response<String>> registerAccount(
//     String username, String password) async {
//   var options = BaseOptions(
//     baseUrl: "http://185.246.67.169:5001/api",
//     connectTimeout: 5000,
//     receiveTimeout: 3000,
//   );
//   var dio = Dio(options);

//   return await dio.post(
//     '/accounts',
//     data: Account(
//       login: username,
//       password: password,
//       personalInfo: PersonalInfo(
//           age: Age(value: 20),
//           firstname: "test",
//           lastname: "test",
//           patronymic: Patronymic(value: "test")),
//     ).toJson().toString(),
//   );
// }

// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     body: Container(
//       padding: EdgeInsets.only(bottom: 30),
//       child: Column(
//         children: <Widget>[
//           HeaderContainer(text: "Register"),
//           Expanded(
//             flex: 1,
//             child: Container(
//               margin: EdgeInsets.only(left: 20, right: 20, top: 30),
//               child: Column(
//                 mainAxisSize: MainAxisSize.max,
//                 children: <Widget>[
//                   _textInput(hint: "Fullname", icon: Icons.person),
//                   _textInput(hint: "Email", icon: Icons.email),
//                   _textInput(hint: "Phone Number", icon: Icons.call),
//                   _textInput(hint: "Password", icon: Icons.vpn_key),
//                   Expanded(
//                     child: Center(
//                       child: ButtonWidget(
//                         text: "REGISTER",
//                         onClick: () {
//                           registerAccount("test", "test");
//                           context.nextPage(MenuPage());
//                         },
//                       ),
//                     ),
//                   ),
//                   RichText(
//                     text: TextSpan(children: [
//                       TextSpan(
//                           text: "Already a member ? ",
//                           style: TextStyle(color: Colors.black)),
//                       TextSpan(
//                           text: "Login",
//                           style: TextStyle(color: primaryColor)),
//                     ]),
//                   )
//                 ],
//               ),
//             ),
//           )
//         ],
//       ),
//     ),
//   );
// }

// Widget _textInput({controller, hint, icon}) {
//   return Container(
//     margin: EdgeInsets.only(top: 10),
//     decoration: BoxDecoration(
//       borderRadius: BorderRadius.all(Radius.circular(20)),
//       color: Colors.white,
//     ),
//     padding: EdgeInsets.only(left: 10),
//     child: TextFormField(
//       controller: controller,
//       decoration: InputDecoration(
//         border: InputBorder.none,
//         hintText: hint,
//         prefixIcon: Icon(icon),
//       ),
//     ),
//   );
// }
