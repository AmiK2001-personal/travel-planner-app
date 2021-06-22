import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:travelplanner/presentation/services/theme_service.dart';
import 'package:velocity_x/velocity_x.dart';

import 'dependency_injection.dart';
import 'presentation/screens/menu/bloc/menu_page_bloc.dart';
import 'presentation/screens/menu/pages/menu_page.dart';
import 'presentation/screens/signin/bloc/signin_bloc.dart';
import 'presentation/screens/signin/pages/login_form.dart';
import 'presentation/screens/signup/bloc/auth_bloc.dart';
import 'presentation/utils/constraints.dart';
import 'package:flutter/services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  runApp(App());
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
  }

  ThemeService themeService = Get.find();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Firebase.initializeApp(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return "Error connect to firebase".text.make();
        }
        if (snapshot.connectionState == ConnectionState.done) {
          return MultiBlocProvider(
            providers: [
              BlocProvider<AuthBloc>(
                create: (BuildContext context) => Get.find<AuthBloc>(),
              ),
              BlocProvider<LoginFormBloc>(
                create: (BuildContext context) => Get.find<LoginFormBloc>(),
              ),
            ],
            child: BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                return GetMaterialApp(
                  themeMode: Get.isDarkMode ? ThemeMode.dark : ThemeMode.light,
                  darkTheme: ThemeData.dark().copyWith(
                    textTheme: const TextTheme(
                      headline6: TextStyle(color: Colors.white),
                      bodyText1: TextStyle(color: Colors.white),
                    ),
                    textButtonTheme: TextButtonThemeData(
                      style: ButtonStyle(
                        textStyle: MaterialStateProperty.all(
                          const TextStyle(color: Colors.black87),
                        ),
                      ),
                    ),
                    accentColor: secondaryColor,
                    primaryColor: primaryColor,
                    backgroundColor: Colors.grey.shade900,
                  ),
                  theme: ThemeData.light().copyWith(
                      accentColor: secondaryColor,
                      primaryColor: primaryColor,
                      backgroundColor: Colors.white),
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
}
