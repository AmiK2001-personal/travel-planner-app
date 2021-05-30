import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelplanner/bloc/auth/bloc/auth_bloc.dart';
import 'package:travelplanner/pages/login_form/login_form.dart';
import 'package:travelplanner/pages/menu_page/menu_page.dart';
import 'package:travelplanner/utilities/constraints.dart';
import 'package:velocity_x/velocity_x.dart';

import 'bloc/login_form/login_form_bloc.dart';
import 'bloc/menu_page/menu_page_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Firebase.initializeApp(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const Text("Error connect to firebase");
        }
        if (snapshot.connectionState == ConnectionState.done) {
          return MultiBlocProvider(
            providers: [
              BlocProvider<AuthBloc>(
                create: (BuildContext context) => AuthBloc(),
              ),
              BlocProvider<LoginFormBloc>(
                create: (BuildContext context) => LoginFormBloc(),
              ),
            ],
            child: BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                return MaterialApp(
                  themeMode: ThemeMode.light,
                  darkTheme: buildDarkThemeData(),
                  theme: buildLightThemeData(),
                  debugShowCheckedModeBanner: false,
                  home: buildHomeBlocListener(),
                );
              },
            ),
          );
        }
        return const CircularProgressIndicator();
      },
    );
  }

  BlocListener<AuthBloc, AuthState> buildHomeBlocListener() {
    return BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.when(
              initial: () => null,
              created: (userCredential) => {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text("Успех"),
                          content: SingleChildScrollView(
                            child: ListBody(
                              children: [
                                "Пользователь успешно зарегестрирован"
                                    .text
                                    .make(),
                              ],
                            ),
                          ),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('ОК'),
                            ),
                          ],
                        );
                      },
                    )
                  },
              authenticated: (userCredential) => {
                    context.nextPage(
                      BlocProvider(
                        create: (context) => MenuPageBloc(),
                        child: MenuPage(),
                      ),
                    )
                  },
              logouted: () => context.pop(LoginForm()),
              error: (errorMessage) => {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text("Ошибка"),
                          content: SingleChildScrollView(
                            child: ListBody(
                              children: [
                                Text(errorMessage),
                              ],
                            ),
                          ),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('ОК'),
                            ),
                          ],
                        );
                      },
                    )
                  });
        },
        child: LoginForm());
  }

  ThemeData buildLightThemeData() {
    return ThemeData(
        accentColor: secondaryColor,
        primaryColor: primaryColor,
        backgroundColor: Colors.white);
  }

  ThemeData buildDarkThemeData() {
    return ThemeData(
      textTheme: const TextTheme(
        headline6: TextStyle(color: Colors.white),
        bodyText1: TextStyle(color: Colors.white),
      ),
      accentColor: secondaryColor,
      primaryColor: primaryColor,
      backgroundColor: Colors.grey.shade900,
    );
  }
}
