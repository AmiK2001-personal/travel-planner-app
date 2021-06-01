import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:latlng/latlng.dart';
import 'package:travelplanner/models/gen/travel/geopoint.dart';
import 'package:travelplanner/models/gen/travel/goodies.dart';
import 'package:travelplanner/models/gen/travel/locations.dart';
import 'package:travelplanner/models/gen/travel/travellers.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:travelplanner/models/gen/travel/travel.dart';
import 'package:travelplanner/pages/widgets/tp_text_field.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:travelplanner/utilities/constraints.dart';
import 'package:map/map.dart' as flutter_map;
import 'package:kt_dart/kt.dart';
import 'package:supercharged/supercharged.dart';
import 'package:travelplanner/models/gen/travel/geopoint.dart' as geo;

class LocationScreenDialog extends StatefulWidget {
  final List<Locations>? locations;
  final String travelId;

  const LocationScreenDialog(this.locations, this.travelId);

  @override
  LocationScreenDialogState createState() => LocationScreenDialogState();
}

class LocationScreenDialogState extends State<LocationScreenDialog> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController longitudeController = TextEditingController();
  final TextEditingController latitudetudeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Локация"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            TextField(
              decoration: const InputDecoration(labelText: "Название"),
              controller: nameController,
            ),
            TextField(
              decoration: const InputDecoration(labelText: "Долгота"),
              controller: longitudeController,
            ),
            TextField(
              decoration: const InputDecoration(labelText: "Широта"),
              controller: latitudetudeController,
            ),
            // ElevatedButton(
            //   onPressed: () {},
            //   child: "Выбрать локацию".text.make().click(() {}).make(),
            // ),
            Row(
              children: <Widget>[
                Expanded(
                  child: ElevatedButton(
                    onPressed: () async {
                      var data =
                          List<Map<String, dynamic>>.empty(growable: true);
                      if (widget.locations != null) {
                        data =
                            widget.locations!.map((e) => e.toJson()).toList();
                        data.add(
                          {
                            "name": nameController.text,
                            "geopoint": {
                              "latitude":
                                  latitudetudeController.text.toDouble()!,
                              "longitude": longitudeController.text.toDouble()!
                            }
                          },
                        );
                      } else {
                        data = [
                          {
                            "name": nameController.text,
                            "geopoint": {
                              "latitude":
                                  latitudetudeController.text.toDouble()!,
                              "longitude": longitudeController.text.toDouble()!
                            }
                          }
                        ];
                      }

                      await FirebaseFirestore.instance
                          .collection("travels")
                          .doc(widget.travelId)
                          .update({"locations": data});
                      Navigator.pop(context);
                    },
                    child: const Text("Сохранить"),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class GoodieScreenDialog extends StatefulWidget {
  final List<Goodies>? goodies;
  final String travelId;

  const GoodieScreenDialog(this.travelId, this.goodies);

  @override
  GoodieScreenDialogState createState() => GoodieScreenDialogState();
}

class GoodieScreenDialogState extends State<GoodieScreenDialog> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  final TextEditingController quantityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Товар"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            TextField(
              decoration: const InputDecoration(labelText: "Название"),
              controller: nameController,
            ),
            TextField(
              decoration: const InputDecoration(labelText: "Цена"),
              controller: priceController,
            ),
            TextField(
              decoration: const InputDecoration(labelText: "Количество"),
              controller: quantityController,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: ElevatedButton(
                    onPressed: () async {
                      var data = List<Map<String, dynamic>>.empty();
                      if (widget.goodies != null) {
                        data = widget.goodies!.kt
                            .plusElement(Goodies(
                                name: nameController.text,
                                price: priceController.text.toDouble(),
                                quantity: quantityController.text.toInt()))
                            .map((e) => e.toJson())
                            .asList();
                      } else {
                        data = [
                          Goodies(
                                  name: nameController.text,
                                  price: priceController.text.toDouble(),
                                  quantity: quantityController.text.toInt())
                              .toJson()
                        ];
                      }
                      await FirebaseFirestore.instance
                          .collection("travels")
                          .doc(widget.travelId)
                          .update({"goodies": data});
                      Navigator.pop(context);
                    },
                    child: const Text("Сохранить"),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MemberScreenDialog extends StatefulWidget {
  final String travelId;
  final List<Travellers>? travellers;

  const MemberScreenDialog(this.travelId, this.travellers);

  @override
  MemberScreenDialogState createState() => MemberScreenDialogState();
}

class MemberScreenDialogState extends State<MemberScreenDialog> {
  final TextEditingController _skillOneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Учатник"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            TextField(
              decoration: const InputDecoration(
                  labelText: "Идентификатор пользователя"),
              controller: _skillOneController,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: ElevatedButton(
                    onPressed: () async {
                      var data = List<Map<String, dynamic>>.empty();
                      if (widget.travellers != null) {
                        data = widget.travellers!.kt
                            .plusElement(Travellers(
                                roleId: "2", userId: _skillOneController.text))
                            .map((e) => e.toJson())
                            .asList();
                      } else {
                        data = [
                          Travellers(
                                  roleId: "2", userId: _skillOneController.text)
                              .toJson()
                        ];
                      }
                      await FirebaseFirestore.instance
                          .collection("travels")
                          .doc(widget.travelId)
                          .update({"travellers": data});
                      Navigator.pop(context);
                    },
                    child: const Text("Добавить"),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MyTravelDetailsPage extends StatefulWidget {
  final String travelId;

  const MyTravelDetailsPage({
    Key? key,
    required this.travelId,
  }) : super(key: key);

  @override
  _MyTravelDetailsPageState createState() => _MyTravelDetailsPageState();
}

class _MyTravelDetailsPageState extends State<MyTravelDetailsPage>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  final picker = ImagePicker();

  Future<File?> getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    if (pickedFile != null) return File(pickedFile.path);
  }

  Future<File?> getPhoto() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);
    if (pickedFile != null) return File(pickedFile.path);
  }

  void showMap() {
    showDialog(
      context: context,
      builder: (context) => flutter_map.MapLayoutBuilder(
        controller: controller,
        builder: (context, transformer) {
          final markerPositions =
              markers.map(transformer.fromLatLngToXYCoords).toList();

          final markerWidgets = markerPositions.map(
            (pos) => _buildMarkerWidget(pos, Colors.red),
          );

          final homeLocation =
              transformer.fromLatLngToXYCoords(LatLng(35.68, 51.412));

          final homeMarkerWidget =
              _buildMarkerWidget(homeLocation, Colors.black);

          final centerLocation = Offset(
              transformer.constraints.biggest.width / 2,
              transformer.constraints.biggest.height / 2);

          final centerMarkerWidget =
              _buildMarkerWidget(centerLocation, Colors.purple);

          return GestureDetector(
            onDoubleTap: _onDoubleTap,
            onScaleStart: _onScaleStart,
            onScaleUpdate: _onScaleUpdate,
            onTapUp: (details) {
              final location =
                  transformer.fromXYCoordsToLatLng(details.localPosition);

              final clicked = transformer.fromLatLngToXYCoords(location);
            },
            child: Stack(
              children: [
                flutter_map.Map(
                  controller: controller,
                  builder: (context, x, y, z) {
                    //Legal notice: This url is only used for demo and educational purposes. You need a license key for production use.

                    //Google Maps
                    final url =
                        'https://www.google.com/maps/vt/pb=!1m4!1m3!1i$z!2i$x!3i$y!2m3!1e0!2sm!3i420120488!3m7!2sen!5e1105!12m4!1e68!2m2!1sset!2sRoadmap!4e0!5m1!1e0!23i4111425';

                    //Mapbox Streets
                    // final url =
                    //     'https://api.mapbox.com/styles/v1/mapbox/streets-v11/tiles/$z/$x/$y?access_token=YOUR_MAPBOX_ACCESS_TOKEN';

                    return CachedNetworkImage(
                      imageUrl: url,
                      fit: BoxFit.cover,
                    );
                  },
                ),
                homeMarkerWidget,
                ...markerWidgets,
                centerMarkerWidget,
              ],
            ),
          );
        },
      ),
    );
  }

  List<Widget> list = const [
    Tab(
      icon: Icon(Icons.info),
      text: "Информация",
    ),
    Tab(
      icon: Icon(Icons.card_travel),
      text: "Локации",
    ),
    Tab(
      icon: Icon(Icons.add_shopping_cart),
      text: "Покупки",
    ),
    Tab(
      icon: Icon(Icons.group),
      text: "Группа",
    ),
  ];

  Future<DateTime?> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null) return picked;
  }

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: list.length, vsync: this);

    _controller.addListener(() {
      setState(() {});
    });
  }

  Stream<DocumentSnapshot<Map<String, dynamic>>> fetchTravel(String travelId) {
    return FirebaseFirestore.instance
        .collection("travels")
        .doc(travelId)
        .snapshots();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(accentColor: secondaryColor, primaryColor: primaryColor),
      debugShowCheckedModeBanner: false,
      home: StreamBuilder<DocumentSnapshot<Map<String, dynamic>>>(
          stream: fetchTravel(widget.travelId),
          builder: (context, snapshot) {
            final travel = Travel.fromJson(snapshot.data!.data()!);

            return Scaffold(
              appBar: AppBar(
                title: "Путешествие: ${travel.name!}".text.make(),
                bottom: TabBar(
                  controller: _controller,
                  tabs: list,
                ),
              ),
              floatingActionButton: _controller.index > 0
                  ? [
                      IconButton(
                          icon: const Icon(Icons.add),
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) => LocationScreenDialog(
                                  travel.locations, widget.travelId),
                            );
                          }),
                      IconButton(
                          icon: const Icon(Icons.add),
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) => GoodieScreenDialog(
                                  widget.travelId, travel.goodies),
                            );
                          }),
                      IconButton(
                          icon: const Icon(Icons.add),
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) => MemberScreenDialog(
                                  widget.travelId, travel.travellers),
                            );
                          }),
                    ][_controller.index - 1]
                  : null,
              body: TabBarView(
                controller: _controller,
                children: [
                  ListView(
                    children: [
                      buildNameTextField(travel),
                      buildDescriptionTextField(travel),
                      buildDate(context, travel),
                      HStack([
                        const Icon(Icons.public)
                            .box
                            .margin(
                              const EdgeInsets.only(right: 12),
                            )
                            .make(),
                        "Публичный".text.make(),
                        Switch(
                          value: travel.isPublic ?? false,
                          onChanged: (state) {
                            FirebaseFirestore.instance
                                .collection("travels")
                                .doc(widget.travelId)
                                .update({"is_public": state});
                          },
                        ),
                      ]).box.margin(const EdgeInsets.only(left: 12)).make(),
                      "Фотографии".text.headline6(context).makeCentered(),
                      if (travel.images != null && travel.images!.isNotEmpty)
                        buildImageSwiper(travel),
                      // Column(
                      //   children: [
                      //     buildImageButton(context),
                      //     buildPhotoButton(context)
                      //   ],
                      // )
                    ]
                        .map((e) => e.box
                            .margin(const EdgeInsets.only(bottom: 8))
                            .make())
                        .toList(),
                  ).p8(),
                  if (travel.locations != null)
                    buildLocationsListView(travel)
                  else
                    "Нет локаций".text.headline6(context).makeCentered(),
                  if (travel.goodies != null)
                    Stack(
                      children: [
                        buildGoodiesListView(travel),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child:
                              "Сумма: ${travel.goodies!.fold<double>(0, (acc, e) => acc + e.price! * e.quantity!)}"
                                  .text
                                  .red400
                                  .headline5(context)
                                  .make()
                                  .p20(),
                        ),
                      ],
                    )
                  else
                    "Нет товаров".text.headline6(context).makeCentered(),
                  if (travel.travellers != null)
                    buildMembersListView(travel)
                  else
                    "Нет участников".text.headline6(context).makeCentered(),
                ],
              ),
            );
          }),
    );
  }

  Widget buildDate(BuildContext context, Travel travel) {
    return HStack([
      IconButton(
          icon: const Icon(Icons.date_range),
          onPressed: () async {
            final date = await _selectDate(context);

            if (date != null) {
              FirebaseFirestore.instance
                  .collection("travels")
                  .doc(widget.travelId)
                  .update({"date": date.toString()});
            }
          }),
      if (travel.date != null)
        travel.date.toString().text.make()
      else
        "Дата".text.gray600.make(),
    ]).box.border(color: context.theme.accentColor).rounded.make();
  }

  TpTextField buildDescriptionTextField(Travel travel) {
    return TpTextField(
      heigth: 200,
      icon: const Icon(Icons.info_outlined),
      hint: "Описание",
      value: travel.description,
      onChanged: (text) {
        FirebaseFirestore.instance
            .collection("travels")
            .doc(widget.travelId)
            .update({"description": text});
      },
    );
  }

  TpTextField buildNameTextField(Travel travel) {
    return TpTextField(
      icon: const Icon(Icons.info_outlined),
      hint: "Название",
      value: travel.name,
      onChanged: (name) {
        FirebaseFirestore.instance
            .collection("travels")
            .doc(widget.travelId)
            .update({"name": name});
      },
    );
  }

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
          showMap();
        });
      },
      itemCount: travel.locations!.length,
    );
  }

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

  String roleIdToString(String roleId) {
    if (roleId == "0") {
      return "Создатель";
    } else if (roleId == "1") {
      return "Гид";
    } else if (roleId == "2") {
      return "Участник";
    } else {
      return "Не определен";
    }
  }

  ListView buildMembersListView(Travel travel) {
    return ListView.builder(
      itemCount: travel.travellers!.length,
      itemBuilder: (BuildContext context, int index) {
        return "UID: ${travel.travellers![index].userId!} ${roleIdToString(travel.travellers![index].roleId!)}"
            .text
            .make()
            .box
            .margin(const EdgeInsets.all(10))
            .make()
            .card
            .make();
      },
    );
  }

  VxSwiper buildImageSwiper(Travel travel) {
    return VxSwiper.builder(
      itemCount: travel.images!.length,
      itemBuilder: (context, index) => CachedNetworkImage(
        imageUrl: travel.images![index],
        fit: BoxFit.fill,
      ).card.roundedLg.make(),
    );
  }

  ElevatedButton buildPhotoButton(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(context.primaryColor),
      ),
      onPressed: () async {
        getPhoto();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Icon(Icons.photo_camera),
          "Сфотографировать".text.make()
        ],
      ),
    );
  }

  ElevatedButton buildImageButton(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(context.primaryColor),
      ),
      onPressed: () async {
        getImage();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Icon(Icons.image),
          "Загрузить изображение из галереи".text.make()
        ],
      ),
    );
  }

  final controller = flutter_map.MapController(
    location: LatLng(35.68, 51.41),
  );

  final markers = [
    LatLng(35.674, 51.41),
  ];

  void _gotoDefault() {
    controller.center = LatLng(35.68, 51.41);
    setState(() {});
  }

  void _onDoubleTap() {
    controller.zoom += 0.5;
    setState(() {});
  }

  Offset? _dragStart;
  double _scaleStart = 1.0;
  void _onScaleStart(ScaleStartDetails details) {
    _dragStart = details.focalPoint;
    _scaleStart = 1.0;
  }

  void _onScaleUpdate(ScaleUpdateDetails details) {
    final scaleDiff = details.scale - _scaleStart;
    _scaleStart = details.scale;

    if (scaleDiff > 0) {
      controller.zoom += 0.02;
      setState(() {});
    } else if (scaleDiff < 0) {
      controller.zoom -= 0.02;
      setState(() {});
    } else {
      final now = details.focalPoint;
      final diff = now - _dragStart!;
      _dragStart = now;
      controller.drag(diff.dx, diff.dy);
      setState(() {});
    }
  }

  Widget _buildMarkerWidget(Offset pos, Color color) {
    return Positioned(
      left: pos.dx - 16,
      top: pos.dy - 16,
      width: 24,
      height: 24,
      child: Icon(Icons.location_on, color: color),
    );
  }
}
