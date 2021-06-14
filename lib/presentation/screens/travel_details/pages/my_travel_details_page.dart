import 'package:flutter/material.dart';
import 'package:travelplanner/domain/entities/travel/travel.dart';
import 'package:travelplanner/presentation/screens/travel_details/pages/info_page/info_page.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'goodies_page/goodies_dialog.dart';
import 'goodies_page/goodies_page.dart';
import 'group_page/members_dialog.dart';
import 'group_page/members_page.dart';
import 'location_page/location_dialog.dart';
import 'location_page/location_page.dart';

class MyTravelDetailsPage extends StatefulWidget {
  final String travelId;

  const MyTravelDetailsPage({
    Key? key,
    required this.travelId,
  }) : super(key: key);

  @override
  _MyTravelDetailsPageState createState() => _MyTravelDetailsPageState();
}

class _MyTravelDetailsPageState extends State<MyTravelDetailsPage>
    with SingleTickerProviderStateMixin {
  late TabController _controller;

  List<Widget> list = const [
    Tab(
      icon: Icon(Icons.info),
      text: "Информация",
    ),
    Tab(
      icon: Icon(Icons.card_travel),
      text: "Локации",
    ),
    Tab(
      icon: Icon(Icons.add_shopping_cart),
      text: "Покупки",
    ),
    Tab(
      icon: Icon(Icons.group),
      text: "Группа",
    ),
  ];

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: list.length, vsync: this);
    _controller.addListener(() {
      // Notify to update bottom action buttons
      setState(() {});
    });
  }

  Stream<DocumentSnapshot<Map<String, dynamic>>> fetchTravel(String travelId) {
    return FirebaseFirestore.instance
        .collection("travels")
        .doc(travelId)
        .snapshots();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<DocumentSnapshot<Map<String, dynamic>>>(
        stream: fetchTravel(widget.travelId),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final travel = Travel.fromJson(snapshot.data!.data()!);

            return Scaffold(
              appBar: AppBar(
                title: "Путешествие: ${travel.name!}".text.make(),
                bottom: TabBar(
                  controller: _controller,
                  tabs: list,
                ),
              ),
              floatingActionButton: _controller.index > 0
                  ? [
                      IconButton(
                          icon: const Icon(Icons.add),
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) => LocationScreenDialog(
                                  travel.locations, widget.travelId),
                            );
                          }),
                      IconButton(
                          icon: const Icon(Icons.add),
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) => GoodieScreenDialog(
                                  widget.travelId, travel.goodies),
                            );
                          }),
                      IconButton(
                          icon: const Icon(Icons.add),
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) => MemberScreenDialog(
                                  widget.travelId, travel.travellers),
                            );
                          }),
                    ][_controller.index - 1]
                  : null,
              body: TabBarView(
                controller: _controller,
                children: [
                  InfoPage(travel: travel, travelId: widget.travelId),
                  LocationPage(
                    travel: travel,
                  ),
                  GoodiesPage(travel: travel),
                  MembersPage(
                    travel: travel,
                  )
                ],
              ),
            );
          } else {
            return const CircularProgressIndicator.adaptive();
          }
        });
  }
}
