import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelplanner/bloc/menu_page/bloc.dart';
import 'package:travelplanner/models/gen/travel/travel.dart';
import 'package:travelplanner/pages/menu_page/widgets/bottom_nav_bar.dart';
import 'package:travelplanner/pages/menu_page/widgets/travel_card.dart';
import 'package:travelplanner/pages/settings_page/settings_page.dart';
import 'package:tuple/tuple.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:travelplanner/pages/my_travels_page/my_travels_page.dart';

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
        backgroundColor: Colors.white.withOpacity(0.9),
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

  Stream<QuerySnapshot<Map<String, dynamic>>>? fetchPublicTravels() {
    return FirebaseFirestore.instance
        .collection("travels")
        .where('is_public', isEqualTo: true)
        .snapshots();
  }

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

  Widget buildPlaceholder(BuildContext context) {
    return VStack(
      [
        Icon(
          Icons.build_circle,
          size: context.percentWidth * 50,
        ).iconColor(Theme.of(context).primaryColor).build(context),
        "UNDER".text.fontWeight(FontWeight.w300).size(48).make(),
        "CONSTRUCTION".text.bold.yellow400.size(32).make(),
        "Прямо сейчас наш единственный программист упорно трудится над реализацией данного функционала."
            .text
            .size(18)
            .gray500
            .align(TextAlign.center)
            .make()
            .box
            .margin(const EdgeInsets.only(top: 20))
            .make()
      ],
      crossAlignment: CrossAxisAlignment.center,
    ).box.margin(const EdgeInsets.all(14)).makeCentered();
  }

  StreamBuilder<QuerySnapshot<Map<String, dynamic>>> buildPublicTravelsPage() {
    return StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
      stream: fetchPublicTravels(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final travels = snapshot.data!.docs
              .map((e) => Tuple2(e.id, Travel.fromJson(e.data())))
              .toList();

          return travels.isNotEmpty
              ? SingleChildScrollView(
                  child: Column(
                    children: [
                      "Публичные путешествия".text.headline5(context).make(),
                      VxSwiper.builder(
                        enableInfiniteScroll: false,
                        scrollDirection: Axis.vertical,
                        itemCount: travels.length,
                        height: context.screenHeight,
                        itemBuilder: (context, index) {
                          return TravelCard(travels[index].item1);
                        },
                      ),
                    ],
                  ),
                )
              : "Путешествий нет".text.make().centered();
        } else if (!snapshot.hasError && !snapshot.hasData) {
          return const CircularProgressIndicator();
        } else {
          return const Text("Error");
        }
      },
    );
  }
}
