import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_planner_app/models/api/account/account.dart';
import 'package:travel_planner_app/network/rest_client.dart';
import 'package:travel_planner_app/pages/login_form/login_form.dart';
import 'package:travel_planner_app/utilities/constraints.dart';

import 'bloc/login_form/login_form_bloc.dart';

Future<void> main() async {
  final apiClient = RestClient();
  var str = await apiClient.getAccounts();
  print(Account.fromJson(toMap((str.items)!.first)).login);

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
