import 'package:flutter/material.dart';
import 'package:travel_planner_app/models/accounts.dart';
import 'package:travel_planner_app/utilities/constraints.dart';
import 'package:travel_planner_app/widgets/button_widget.dart';
import 'package:travel_planner_app/widgets/header_container.dart';
import 'package:dio/dio.dart';
import '';

class RegPage extends StatefulWidget {
  @override
  _RegPageState createState() => _RegPageState();
}

class _RegPageState extends State<RegPage> {
  Future<void> registerAccount(String username, String password) async {
    return await Dio().post(
      'http://10.0.2.2:5000/api/accounts',
      data: Account(
        login: username,
        password: password,
        personalInfo: PersonalInfo(
            age: Age(value: 20),
            firstname: "test",
            lastname: "test",
            patronymic: Patronymic(value: "test")),
      ).toJson().toString(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(bottom: 30),
        child: Column(
          children: <Widget>[
            HeaderContainer("Register"),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 30),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    _textInput(hint: "Fullname", icon: Icons.person),
                    _textInput(hint: "Email", icon: Icons.email),
                    _textInput(hint: "Phone Number", icon: Icons.call),
                    _textInput(hint: "Password", icon: Icons.vpn_key),
                    Expanded(
                      child: Center(
                        child: ButtonWidget(
                          btnText: "REGISTER",
                          onClick: () {
                            registerAccount("test", "test");
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

  Widget _textInput({controller, hint, icon}) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.white,
      ),
      padding: EdgeInsets.only(left: 10),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
          prefixIcon: Icon(icon),
        ),
      ),
    );
  }
}
