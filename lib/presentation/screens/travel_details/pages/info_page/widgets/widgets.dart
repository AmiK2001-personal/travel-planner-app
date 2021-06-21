import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:travelplanner/domain/entities/travel/travel.dart';
import 'package:travelplanner/presentation/widgets/image_viewer.dart';
import 'package:travelplanner/presentation/widgets/tp_text_field.dart';
import 'package:velocity_x/velocity_x.dart';

Future<DateTime?> _selectDate(BuildContext context) async {
  final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2015, 8),
      lastDate: DateTime(2101));
  if (picked != null) return picked;
}

Widget buildDate(BuildContext context, Travel travel, String travelId) {
  return HStack([
    IconButton(
        icon: const Icon(Icons.date_range),
        onPressed: () async {
          final date = await _selectDate(context);

          if (date != null) {
            FirebaseFirestore.instance
                .collection("travels")
                .doc(travelId)
                .update({"date": date.toString()});
          }
        }),
    if (travel.date != null)
      travel.date.toString().text.make()
    else
      "Дата".text.gray600.make(),
  ]).box.border(color: context.accentColor).rounded.make();
}

TpTextField buildDescriptionTextField(Travel travel, String travelId) {
  return TpTextField(
    heigth: 200,
    maxLine: 200,
    icon: const Icon(Icons.info_outlined),
    hint: "Описание",
    value: travel.description,
    onChanged: (text) {
      FirebaseFirestore.instance
          .collection("travels")
          .doc(travelId)
          .update({"description": text});
    },
  );
}

TpTextField buildNameTextField(Travel travel, String travelId) {
  return TpTextField(
    icon: const Icon(Icons.info_outlined),
    hint: "Название",
    value: travel.name,
    onChanged: (name) {
      FirebaseFirestore.instance
          .collection("travels")
          .doc(travelId)
          .update({"name": name});
    },
  );
}

VxSwiper buildImageSwiper(Travel travel) {
  return VxSwiper.builder(
    itemCount: travel.images!.length,
    itemBuilder: (context, index) => CachedNetworkImage(
      imageUrl: travel.images![index].path,
      fit: BoxFit.fill,
    ).card.roundedLg.make().onTap(() {
      context.nextPage(
          ImageViewer(imageProvider: NetworkImage(travel.images![index].path)));
    }),
  );
}
