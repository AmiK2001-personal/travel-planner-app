import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travelplanner/data/repositories/travel_remote_data_source.dart';
import 'package:travelplanner/domain/entities/travel/travel.dart';
import 'package:travelplanner/domain/entities/travel/travellers.dart';
import 'package:travelplanner/presentation/screens/signup/bloc/auth_bloc.dart';
import 'package:travelplanner/presentation/screens/travel_details/pages/my_travel_details_page.dart';
import 'package:tuple/tuple.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyTravelsPage extends StatelessWidget {
  final TravelRemoteDataSource travelRemoteDataSource =
      Get.find<TravelRemoteDataSource>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await travelRemoteDataSource.createForUserWithId(
              context.read<AuthBloc>().userRepo.getUser()!.uid);
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      backgroundColor: Colors.white10,
      body: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
        stream: travelRemoteDataSource
            .getUserTravels(context.read<AuthBloc>().userRepo.getUser()!.uid),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final userTravels = snapshot.data!.docs
                .map((e) => Tuple2(e.id, Travel.fromJson(e.data())))
                .toList();
            if (userTravels.isEmpty) {
              return VStack(
                [
                  "У вас нет путешествий"
                      .text
                      .size(20)
                      .makeCentered()
                      .box
                      .margin(const EdgeInsets.only(bottom: 6))
                      .make(),
                ],
              )
                  .box
                  .margin(const EdgeInsets.symmetric(horizontal: 10))
                  .makeCentered();
            } else {
              return ListView.builder(
                itemCount: userTravels.length,
                itemBuilder: (context, index) {
                  final travel = userTravels[index];

                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(children: [
                        if (travel.item2.images != null)
                          CachedNetworkImage(
                            width: 100,
                            imageUrl: //travel.item2.images!.first.path ??
                                "https://travelmaz.com/wp-content/uploads/2021/01/https___specials-images.forbesimg.com_imageserve_5f709d82fa4f131fa2114a74_0x0.jpg",
                          ).card.rounded.make(),
                        Text(travel.item2.name ?? "No name").centered()
                      ]),
                      if (travel.item2.isPublic != null)
                        travel.item2.isPublic!
                            ? "Публичный".text.color(Colors.lightGreen).make()
                            : "Приватный".text.color(Colors.red).make()
                      else
                        "Приватный".text.color(Colors.red).make(),
                      Text(
                          "В группе ${travel.item2.travellers!.length} человек")
                    ],
                  )
                      .box
                      .margin(const EdgeInsets.all(10))
                      .make()
                      .card
                      .make()
                      .onTap(() {
                    context.nextPage(
                      MyTravelDetailsPage(
                        travelId: travel.item1,
                      ),
                    );
                  });
                  return "ke".text.make(); // TODO! make fix
                },
              );
            }
          } else if (!snapshot.hasData) {
            return const CircularProgressIndicator();
          } else {
            return "Error".text.make();
          }
        },
      ),
    ).box.padding(const EdgeInsets.only(bottom: 100)).make();
  }
}
