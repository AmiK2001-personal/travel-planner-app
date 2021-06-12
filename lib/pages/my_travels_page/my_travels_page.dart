import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:travelplanner/bloc/auth/bloc/auth_bloc.dart';
import 'package:travelplanner/models/gen/travel/travel.dart';
import 'package:travelplanner/models/gen/travel/travellers.dart';
import 'package:travelplanner/pages/my_travel_details_page/my_travel_details_page.dart';
import 'package:tuple/tuple.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<DocumentReference<Map<String, dynamic>>> createEmptyTravelForUser(
    String userId) async {
  final travel = {
    "name": "Без названия",
    "travellers": [
      Travellers(roleId: "0", userId: userId).toJson(),
    ],
  };
  return FirebaseFirestore.instance.collection("travels").add(travel);
}

Stream<QuerySnapshot<Map<String, dynamic>>>? fetchUserTravels(String userId) {
  return FirebaseFirestore.instance.collection("travels").snapshots();
}

class MyTravelsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await createEmptyTravelForUser(
              context.read<AuthBloc>().userRepo.getUser()!.uid);
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      backgroundColor: Colors.white10,
      body: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
        stream:
            fetchUserTravels(context.read<AuthBloc>().userRepo.getUser()!.uid),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final travels = snapshot.data!.docs
                .map((e) => Tuple2(e.id, Travel.fromJson(e.data())))
                .toList();
            final userTravels = travels
                .filter((x) => x.item2.travellers!.containsAny(["0", "1", "2"]
                    .map((e) => Travellers(
                        userId:
                            context.read<AuthBloc>().userRepo.getUser()!.uid,
                        roleId: e))))
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
