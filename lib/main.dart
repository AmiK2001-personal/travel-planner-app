import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_planner_app/pages/login_form/login_form.dart';
import 'package:travel_planner_app/utilities/constraints.dart';

import 'bloc/login_form/login_form_bloc.dart';

Future<void> main() async {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(accentColor: secondaryColor, primaryColor: primaryColor),
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (_) => LoginFormBloc(),
        child: LoginForm(),
      ),
    );
  }
}
