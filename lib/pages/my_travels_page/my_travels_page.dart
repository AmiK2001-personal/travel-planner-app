import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:travelplanner/bloc/auth/bloc/auth_bloc.dart';
import 'package:travelplanner/models/gen/travel/travel.dart';
import 'package:travelplanner/models/gen/travel/travellers.dart';
import 'package:travelplanner/pages/widgets/button_widget.dart';
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
  print(travel);
  return FirebaseFirestore.instance.collection("travels").add(travel);
}

Stream<QuerySnapshot<Map<String, dynamic>>>? fetchUserTravels(String userId) {
  return FirebaseFirestore.instance.collection("travels").snapshots();
}

class MyTravelsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
      stream:
          fetchUserTravels(context.read<AuthBloc>().userRepo.getUser()!.uid),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final travels = snapshot.data!.docs
              .map((e) => Tuple2(e.id, Travel.fromJson(e.data())))
              .toList();
          final userTravels = travels
              .where((element) => element.item2.travellers!.contains({
                    "user_id": context.read<AuthBloc>().userRepo.getUser()!.uid
                  }))
              .toList();

          if (userTravels.isNotEmpty) {
            return VStack([
              "У вас нет путешествий"
                  .text
                  .size(20)
                  .makeCentered()
                  .box
                  .margin(const EdgeInsets.only(bottom: 6))
                  .make(),
              ButtonWidget(
                text: "Создать",
                onClick: () async {
                  await createEmptyTravelForUser(
                      context.read<AuthBloc>().userRepo.getUser()!.uid);
                },
              )
            ])
                .box
                .margin(const EdgeInsets.symmetric(horizontal: 10))
                .makeCentered();
          } else {
            ListView.builder(
              itemBuilder: (context, index) {
                return Card(
                  child: Row(
                    children: [
                      Image.network(
                          userTravels[index].item2.images!.firstOrNull())
                    ],
                  ),
                );
              },
            );
          }
        } else if (snapshot.hasError) {
          return "Error".text.make();
        }
        return const CircularProgressIndicator();
      },
    );
  }
}
