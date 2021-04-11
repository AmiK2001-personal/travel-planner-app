import 'package:flutter/material.dart';
import 'package:travel_planner_app/pages/login_signup.dart';

class Signin extends StatefulWidget {
  Signin({Key key}) : super(key: key);

  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: LoginSignup(),
    );
  }
}
