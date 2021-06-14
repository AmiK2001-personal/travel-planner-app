import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:travelplanner/data/repositories/travel_remote_data_source.dart';
import 'package:travelplanner/domain/entities/travel/travel.dart';
import 'package:travelplanner/presentation/screens/menu/widgets/widgets.dart';
import 'package:tuple/tuple.dart';
import 'package:velocity_x/velocity_x.dart';

StreamBuilder<QuerySnapshot<Map<String, dynamic>>> buildPublicTravelsPage() {
  return StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
    stream: Get.find<TravelRemoteDataSource>().getPublicTravels(),
    builder: (context, snapshot) {
      if (snapshot.hasData) {
        final travels = snapshot.data!.docs
            .map((e) => Tuple2(e.id, Travel.fromJson(e.data())))
            .toList();

        return travels.isNotEmpty
            ? SingleChildScrollView(
                padding: EdgeInsets.zero,
                child: VxSwiper.builder(
                  enableInfiniteScroll: false,
                  scrollDirection: Axis.vertical,
                  itemCount: travels.length,
                  height: context.screenHeight,
                  itemBuilder: (context, index) {
                    return TravelCard(travels[index].item1)
                        .box
                        .padding(const EdgeInsets.only(bottom: 10))
                        .make();
                  },
                ))
            : "Путешествий нет".text.make().centered();
      } else if (!snapshot.hasError && !snapshot.hasData) {
        return const CircularProgressIndicator();
      } else {
        return const Text("Error");
      }
    },
  );
}
