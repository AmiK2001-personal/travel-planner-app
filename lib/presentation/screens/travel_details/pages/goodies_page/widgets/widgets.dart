import 'package:flutter/material.dart';
import 'package:travelplanner/domain/entities/travel/travel.dart';
import 'package:velocity_x/velocity_x.dart';

ListView buildGoodiesListView(Travel travel) {
  return ListView.builder(
    itemBuilder: (context, index) {
      final goodie = travel.goodies![index];
      return HStack(
        [
          goodie.name!.text.bold
              .make()
              .box
              .margin(const EdgeInsets.only(right: 6))
              .make(),
          goodie.price!.text.bold.green700
              .make()
              .box
              .margin(const EdgeInsets.only(right: 6))
              .make(),
          goodie.quantity!.text.bold.yellow700
              .make()
              .box
              .margin(const EdgeInsets.only(right: 6))
              .make(),
          "Сумма: ${goodie.price! * goodie.quantity!}"
              .text
              .red400
              .bold
              .make()
              .box
              .margin(const EdgeInsets.only(right: 6))
              .make()
        ],
        alignment: MainAxisAlignment.spaceAround,
      ).box.padding(const EdgeInsets.all(10)).make().card.make();
    },
    itemCount: travel.goodies!.length,
  );
}
