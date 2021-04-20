import 'dart:async';

import 'package:flutter/material.dart';
import 'package:travel_planner_app/extensions/double_ext.dart';
import 'package:travel_planner_app/utilities/constraints.dart';
import 'package:velocity_x/velocity_x.dart';

import 'login_page.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(milliseconds: 1000), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [primaryColor, secondaryColor],
              end: Alignment.bottomCenter,
              begin: Alignment.topCenter),
        ),
        child: Center(
            child: VxAnimator<double>(
                duration: Duration(seconds: 1, milliseconds: 500),
                tween: Tween<double>(begin: 30, end: 80),
                cycles: 0,
                builder: (context, animatorState, child) =>
                    Icon(Icons.card_travel_outlined)
                        .iconColor(Colors.indigoAccent)
                        .iconSize(animatorState.value
                            .mapRange(Range(30, 80), Range(70, 250)))
                        .card
                        .elevation(8)
                        .circular
                        .white
                        .make()
                        .box
                        .size(context.percentWidth * animatorState.value,
                            context.percentWidth * animatorState.value)
                        .makeCentered()).make()),
      ),
    );
  }
}
