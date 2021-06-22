import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:travelplanner/data/repositories/travel_remote_data_source.dart';
import 'package:travelplanner/domain/entities/travel/travel.dart';
import 'package:travelplanner/presentation/screens/signup/bloc/auth_bloc.dart';
import 'package:travelplanner/presentation/screens/travel_details/pages/my_travel_details_page.dart';
import 'package:travelplanner/presentation/utils/fonts.gen.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TravelCard extends StatefulWidget {
  final String travelId;

  const TravelCard(this.travelId, {Key? key}) : super(key: key);

  @override
  _TravelCardState createState() => _TravelCardState();
}

class _TravelCardState extends State<TravelCard> {
  TravelRemoteDataSource travelRemoteDataSource = Get.find();

  Future<Widget> logo(BuildContext context, List<String>? images) async {
    if (images != null && images.isNotEmpty) {
      return CachedNetworkImage(
        imageUrl: images.isNotEmpty
            ? images.first
            : "https://travelmaz.com/wp-content/uploads/2021/01/https___specials-images.forbesimg.com_imageserve_5f709d82fa4f131fa2114a74_0x0.jpg",
        placeholder: (context, url) => const CircularProgressIndicator(),
        errorWidget: (context, url, error) => const Icon(Icons.error),
        fit: BoxFit.fitHeight,
      );
    } else {
      return defaultImage();
    }
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

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<DocumentSnapshot<Map<String, dynamic>>>(
      stream: travelRemoteDataSource.getById(widget.travelId),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final travel = Travel.fromJson(snapshot.data!.data()!);
          return Stack(
            fit: StackFit.expand,
            children: [
              FutureBuilder<Widget>(
                future: logo(context, travel.images),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return snapshot.data!;
                  } else {
                    return const CircularProgressIndicator();
                  }
                },
              ),
              Align(
                alignment: Alignment.bottomCenter,
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
                          .format(DateTime.parse(travel.date!))
                          .text
                          .gray400
                          .fontFamily(FontFamily.metropolis)
                          .make()
                  ],
                ).card.rounded.make().h15(context).wFull(context),
              ),
            ],
          )
              .card
              .elevation(0.15)
              .rounded
              .make()
              .box
              .margin(const EdgeInsets.only(left: 6, right: 6, bottom: 30))
              .make()
              .onInkTap(
            () {
              context.nextPage(
                MyTravelDetailsPage(
                  travellerId: context.read<AuthBloc>().userRepo.getUser()!.uid,
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
