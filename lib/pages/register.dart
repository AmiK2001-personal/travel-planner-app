import 'package:flutter/material.dart';
import 'package:travel_planner_app/widgets/entry.dart';
import 'package:velocity_x/velocity_x.dart';

class Register extends StatefulWidget {
  Register({Key key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return VStack([
      "Регистрация"
          .text
          .textStyle(TextStyle(fontSize: 18, fontWeight: FontWeight.w600))
          .make(),
      Entry(icon: Icon(Icons.email), hint: "Email"),
      Entry(
        icon: Icon(Icons.vpn_key),
        hint: "Password",
        obscureText: true,
      ),
      MaterialButton(
        color: Theme.of(context).accentColor,
        child: "Войти".text.textStyle(TextStyle(color: Colors.white)).make(),
        onPressed: () {},
      ),
      MaterialButton(
        onPressed: () {},
        child: Text("Забыли пароль?"),
        textColor: Theme.of(context).accentColor,
      )
    ]);
  }
}
