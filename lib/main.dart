import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelplanner/bloc/auth/bloc/auth_bloc.dart';
import 'package:travelplanner/pages/login_form/login_form.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelplanner/utilities/constraints.dart';

import 'bloc/login_form/login_form_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // var news = await FirebaseFirestore.instance
  //     .collection("travels")
  //     .add(Travel(name: "Казанский кремль", rating: 5).toJson())
  //     .then((value) => print(value));
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
                    home: context.read<AuthBloc>().userRepo.isSignedIn()
                        ? BlocProvider(
                            create: (_) => LoginFormBloc(),
                            child: LoginForm(),
                          )
                        : null);
              },
            ),
          );
        }
        return const CircularProgressIndicator();
      },
    );
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
