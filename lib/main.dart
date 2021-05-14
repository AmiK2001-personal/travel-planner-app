import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_planner_app/pages/login_form/login_form.dart';
import 'package:travel_planner_app/utilities/constraints.dart';

import 'bloc/login_form/login_form_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(App());
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp(
      name: "travel-planner",
      options: FirebaseOptions(
          apiKey: "AIzaSyAiKAUI01bi1SYjICbAEdjKby-Ps2ymNLw",
          appId: "travel-planner-81a23",
          messagingSenderId: '140290430622',
          projectId: 'travel-planner-81a23'));

  FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire:
      future: _initialization,
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          return const Text("Error connect to firebase");
        }

        // Once complete, show your application
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

        // Otherwise, show something whilst waiting for initialization to complete
        return const CircularProgressIndicator();
      },
    );
  }
}
