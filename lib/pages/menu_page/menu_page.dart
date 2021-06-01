import 'package:blur/blur.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:travelplanner/bloc/menu_page/bloc.dart';
import 'package:travelplanner/gen/assets.gen.dart';
import 'package:travelplanner/gen/fonts.gen.dart';
import 'package:travelplanner/models/gen/travel/travel.dart';
import 'package:travelplanner/pages/settings_page/settings_page.dart';
import 'package:tuple/tuple.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:travelplanner/pages/my_travels_page/my_travels_page.dart';
import 'package:travelplanner/pages/my_travel_details_page/my_travel_details_page.dart';

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
            Body(selectedItemId: selectedNavigationBarItemId),
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

class TravelCard extends StatefulWidget {
  final String travelId;

  const TravelCard(this.travelId, {Key? key}) : super(key: key);

  @override
  _TravelCardState createState() => _TravelCardState();
}

class _TravelCardState extends State<TravelCard> {
  Widget logo(BuildContext context, List<String>? images) {
    return (images != null && images.isNotEmpty
            ? firstTravelImage(images)
            : defaultImage())
        .whFull(context)
        .box
        .make()
        .card
        .rounded
        .elevation(8)
        .makeCentered()
        .whFull(context)
        .box
        .margin(const EdgeInsets.all(4))
        .make();
  }

  CachedNetworkImage firstTravelImage(List<String> images) {
    return CachedNetworkImage(
      imageUrl: images.first,
      placeholder: (context, url) => const CircularProgressIndicator(),
      errorWidget: (context, url, error) => const Icon(Icons.error),
      fit: BoxFit.fitHeight,
    );
  }

  CachedNetworkImage defaultImage() {
    return CachedNetworkImage(
      imageUrl:
          "https://travelmaz.com/wp-content/uploads/2021/01/https___specials-images.forbesimg.com_imageserve_5f709d82fa4f131fa2114a74_0x0.jpg",
      placeholder: (context, url) => const CircularProgressIndicator(),
      errorWidget: (context, url, error) => const Icon(Icons.error),
      fit: BoxFit.fitHeight,
    );
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
          return Stack(
            children: [
              logo(context, travel.images),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  (travel.name ?? "Название")
                      .text
                      .fontWeight(FontWeight.w400)
                      .fontFamily(FontFamily.metropolis)
                      .xl
                      .color(Theme.of(context).primaryColor)
                      .make(),
                  (travel.description ?? "Описание")
                      .text
                      .softWrap(true)
                      .ellipsis
                      .fontFamily(FontFamily.metropolis)
                      .align(TextAlign.center)
                      .gray500
                      .make(),
                  if (travel.date != null)
                    DateFormat('yyyy/MM/dd')
                        .format(travel.date!)
                        .text
                        .fontFamily(FontFamily.metropolis)
                        .make()
                ],
              )
                  .wh(context.percentWidth * 70, context.percentHeight * 12)
                  .card
                  .roundedLg
                  .elevation(12)
                  .make()
                  .box
                  .alignment(Alignment.bottomCenter)
                  .margin(const EdgeInsets.only(bottom: 30))
                  .make()
            ],
          )
              .box
              .margin(const EdgeInsets.only(left: 6, right: 6, bottom: 30))
              .make()
              .onInkTap(
            () {
              context.nextPage(
                MyTravelDetailsPage(
                  travelId: widget.travelId,
                ),
              );
            },
          );
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key, this.selectedItemId = 0}) : super(key: key);

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
            return StreamBuilder<QuerySnapshot<Map<String, dynamic>>?>(
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
                              "Публичные путешествия"
                                  .text
                                  .headline5(context)
                                  .make(),
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
          case 1:
            return MyTravelsPage();
          case 2:
            return SettingsPage();
          default:
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
      },
    );
  }
}

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  _BottomNavBarState();

  int selectedItemId = 0;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MenuPageBloc, MenuPageState>(
      builder: (context, state) {
        return Frost(
          frostColor: Colors.white.withOpacity(0.8),
          borderRadius: BorderRadius.circular(23),
          blur: 13,
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Assets.icons.uniconsLine.homeAlt,
                Assets.icons.uniconsLine.planeFly,
                Assets.icons.uniconsLine.user,
              ]
                  .mapIndexed((currentValue, index) => currentValue
                          .svg(
                              color: context
                                          .read<MenuPageBloc>()
                                          .state
                                          .selectedNavigationBarItemId ==
                                      index
                                  ? context.accentColor
                                  : context.primaryColor)
                          .scale(
                              scaleValue: context
                                          .read<MenuPageBloc>()
                                          .state
                                          .selectedNavigationBarItemId ==
                                      index
                                  ? 1.3
                                  : 1.0)
                          .box
                          .make()
                          .onTap(() {
                        context
                            .read<MenuPageBloc>()
                            .add(SelectedNavigationBarItemIdChanged(index));
                      }))
                  .map((e) => e.scale(scaleValue: 1.2))
                  .toList(),
            ).w(context.percentWidth * 70),
          ),
        )
            .box
            .withRounded(value: 23.0)
            .padding(const EdgeInsets.only(bottom: 20))
            .make();
      },
    );
  }
}
