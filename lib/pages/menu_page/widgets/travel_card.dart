import 'package:blur/blur.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:intl/intl.dart';
import 'package:travelplanner/gen/fonts.gen.dart';
import 'package:travelplanner/models/gen/travel/travel.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:travelplanner/pages/my_travel_details_page/my_travel_details_page.dart';

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
              Align(
                alignment: Alignment.bottomCenter,
                child: Frost(
                  frostColor:
                      const Color.fromARGB(255, 30, 30, 30), // Dark gray
                  blur: 7,
                  child: Column(
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
                            .gray400
                            .fontFamily(FontFamily.metropolis)
                            .make()
                    ],
                  )
                      .w(context.percentWidth * 70)
                      .box
                      .alignment(Alignment.bottomCenter)
                      .margin(const EdgeInsets.only(bottom: 30))
                      .make(),
                )
                    .cornerRadius(15)
                    .wh(context.percentWidth * 93, context.percentHeight * 14)
                    .box
                    .margin(const EdgeInsets.only(bottom: 8))
                    .make(),
              )
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
