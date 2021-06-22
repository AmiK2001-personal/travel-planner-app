import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:travelplanner/data/repositories/travel_remote_data_source.dart';
import 'package:uuid/uuid.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:travelplanner/domain/entities/travel/travel.dart';
import 'package:travelplanner/presentation/screens/travel_details/pages/info_page/widgets/widgets.dart';

class InfoPage extends StatefulWidget {
  final String travelId;
  final Travel travel;
  const InfoPage({
    Key? key,
    required this.travelId,
    required this.travel,
  }) : super(key: key);

  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  final picker = ImagePicker();
  TravelRemoteDataSource travelRemoteDataSource = Get.find();

  Future<File?> getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    if (pickedFile != null) return File(pickedFile.path);
  }

  Future<File?> getPhoto() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);
    if (pickedFile != null) return File(pickedFile.path);
  }

  ElevatedButton buildPhotoButton(BuildContext context, String travelId) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(context.primaryColor),
      ),
      onPressed: () async {
        final image = await getPhoto();
        addImage(image, travelId);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [const Icon(Icons.photo_camera), "Камеры".text.make()],
      ),
    );
  }

  ElevatedButton buildImageButton(BuildContext context, String travelId) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(context.primaryColor),
      ),
      onPressed: () async {
        final image = await getImage();
        addImage(image, travelId);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [const Icon(Icons.image), "Галереи".text.make()],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        buildNameTextField(widget.travel, widget.travelId),
        buildDescriptionTextField(widget.travel, widget.travelId),
        buildDate(context, widget.travel, widget.travelId),
        HStack([
          const Icon(Icons.public)
              .box
              .margin(
                const EdgeInsets.only(right: 12),
              )
              .make(),
          "Публичный".text.make(),
          Switch(
            value: widget.travel.isPublic ?? false,
            onChanged: (state) {
              FirebaseFirestore.instance
                  .collection("travels")
                  .doc(widget.travelId)
                  .update({"is_public": state});
            },
          ),
        ]).box.margin(const EdgeInsets.only(left: 12)).make(),
        "Фотографии".text.headline6(context).makeCentered(),
        if (widget.travel.images != null && widget.travel.images!.isNotEmpty)
          buildImageSwiper(widget.travel),
        "Добавить фото из".text.gray600.makeCentered(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildImageButton(context, widget.travelId)
                .box
                .padding(const EdgeInsets.only(right: 8))
                .make(),
            buildPhotoButton(context, widget.travelId)
          ],
        )
      ]
          .map((e) => e.box.margin(const EdgeInsets.only(bottom: 8)).make())
          .toList(),
    ).p8();
  }

  Future<void> addImage(File? image, String travelId) async {
    if (image != null) {
      final id = const Uuid().v4();
      final path = "travel/$travelId/$id";

      final storageImg = FirebaseStorage.instance.ref(path);

      await storageImg.putFile(image).then((_) async {
        final travel = await travelRemoteDataSource
            .getById(travelId)
            .first
            .then((value) => Travel.fromJson(value.data()!));

        final images = travel.images ?? [];
        images.add(await storageImg.getDownloadURL());

        await FirebaseFirestore.instance
            .collection("travels")
            .doc(travelId)
            .update({"images": images});
      });
    }
  }
}
