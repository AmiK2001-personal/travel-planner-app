import 'package:flutter/material.dart';
import 'package:travelplanner/domain/entities/travel/travel.dart';
import 'package:velocity_x/velocity_x.dart';

ListView buildLocationsListView(Travel travel) {
  return ListView.builder(
    itemBuilder: (context, index) {
      final location = travel.locations![index];
      return HStack(
        [
          location.name!.text.bold
              .make()
              .box
              .margin(
                const EdgeInsets.only(right: 6),
              )
              .make(),
          "(дол. ${location.geopoint!.longitude}, шир. ${location.geopoint!.latitude})"
              .text
              .make()
        ],
      ).box.padding(const EdgeInsets.all(10)).make().card.make().onTap(() {
        // showMap(); TODO! show map
      });
    },
    itemCount: travel.locations!.length,
  );
}
