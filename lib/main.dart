import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_planner_app/bloc/register_form_bloc.dart';
import 'package:travel_planner_app/pages/register_form.dart';

void main() {
  EquatableConfig.stringify = kDebugMode;
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Travel Planner')),
        body: BlocProvider(
          create: (_) => RegisterFormBloc(),
          child: RegisterForm(),
        ),
      ),
    );
  }
}
