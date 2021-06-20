import 'package:blur/blur.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:travelplanner/data/repositories/travel_remote_data_source.dart';
import 'package:travelplanner/domain/entities/travel/travel.dart';
import 'package:travelplanner/presentation/screens/signup/bloc/auth_bloc.dart';
import 'package:travelplanner/presentation/screens/travel_details/pages/info_page/info_page.dart';
import 'package:travelplanner/presentation/widgets/blur_container.dart';
import 'package:velocity_x/velocity_x.dart';

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
  final TravelRemoteDataSource travelRemoteDataSource = Get.find();

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

  Widget buildInfo(Travel travel) {
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
                      builder: (context) =>
                          GoodieScreenDialog(widget.travelId, travel.goodies),
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
      body: SlidingUpPanel(
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
        ).box.margin(const EdgeInsets.only(bottom: 30)).make(),
        renderPanelSheet: false,
        collapsed: BlurContainer(child: "lel".text.makeCentered()),
        panel: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(24.0)),
              boxShadow: [
                BoxShadow(
                  blurRadius: 20.0,
                  color: Colors.grey,
                ),
              ]),
          margin: const EdgeInsets.all(24.0),
          child: Center(
            child: Text("This is the SlidingUpPanel when open"),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<DocumentSnapshot<Map<String, dynamic>>>(
        stream: travelRemoteDataSource.fetchTravel(widget.travelId),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final travel = Travel.fromJson(snapshot.data!.data()!);

            if (travel.isPublic!) {
              return Stack(
                children: [
                  Blur(
                    blur: 2,
                    child: buildInfo(travel),
                  ),
                  VStack([
                    "Для того чтобы просмотреть и редактировать путешествие сначала ипортируйте его"
                        .text
                        .subtitle1(context)
                        .makeCentered(),
                    ElevatedButton(
                        onPressed: () async {
                          final newTravel =
                              await travelRemoteDataSource.importTravel(
                                  travel,
                                  context
                                      .read<AuthBloc>()
                                      .userRepo
                                      .getUser()!
                                      .uid);
                          context.nextReplacementPage(buildInfo(newTravel));
                        },
                        child: HStack([
                          const Icon(Icons.download_rounded),
                          "Импортировать".text.make()
                        ])).centered()
                  ])
                      .box
                      .margin(const EdgeInsets.all(8))
                      .make()
                      .card
                      .rounded
                      .makeCentered()
                ],
              );
            } else {
              return buildInfo(travel);
            }
          } else {
            return const CircularProgressIndicator.adaptive();
          }
        });
  }
}
