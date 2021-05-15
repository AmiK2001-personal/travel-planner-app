import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelplanner/pages/login_form/login_form.dart';
import 'package:travelplanner/utilities/constraints.dart';

import 'bloc/login_form/login_form_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
          return MaterialApp(
            theme: ThemeData(
                accentColor: secondaryColor, primaryColor: primaryColor),
            debugShowCheckedModeBanner: false,
            home: BlocProvider(
              create: (_) => LoginFormBloc(),
              child: LoginForm(),
            ),
          );
        }
        return const CircularProgressIndicator();
      },
    );
  }
}
