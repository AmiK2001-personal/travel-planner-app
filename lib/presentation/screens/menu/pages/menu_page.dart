import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelplanner/presentation/screens/menu/widgets/placeholder.dart';
import 'package:travelplanner/presentation/screens/public_travels/public_travels.dart';
import 'package:travelplanner/presentation/screens/settings/pages/settings_page.dart';
import 'package:travelplanner/presentation/screens/user_travels/pages/my_travels_page.dart';
import 'package:velocity_x/velocity_x.dart';

import '../bloc/bloc.dart';
import '../widgets/widgets.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  _MenuPageState();

  int selectedNavigationBarItemId = 0;

  @override
  Widget build(BuildContext context) {
    return BlocListener<MenuPageBloc, MenuPageState>(
      listener: (context, state) {
        selectedNavigationBarItemId = state.selectedNavigationBarItemId;
      },
      child: Scaffold(
        backgroundColor: context.backgroundColor.withOpacity(0.9),
        body: Stack(
          children: [
            MenuPageContent(selectedItemId: selectedNavigationBarItemId),
            Align(
              alignment: Alignment.bottomCenter,
              child: BottomNavBar(),
            )
          ],
        )
            .box
            .padding(const EdgeInsets.only(top: 15))
            .color(Colors.transparent)
            .make(),
      ),
    );
  }
}

class MenuPageContent extends StatelessWidget {
  const MenuPageContent({Key? key, this.selectedItemId = 0}) : super(key: key);

  final int selectedItemId;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MenuPageBloc, MenuPageState>(
      builder: (context, state) {
        switch (
            context.read<MenuPageBloc>().state.selectedNavigationBarItemId) {
          case 0:
            return buildPublicTravelsPage();
          case 1:
            return MyTravelsPage();
          case 2:
            return SettingsPage();
          default:
            return buildPlaceholder(context);
        }
      },
    );
  }
}
