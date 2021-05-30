import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:latlng/latlng.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:travelplanner/models/gen/travel/travel.dart';
import 'package:travelplanner/pages/widgets/tp_text_field.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:travelplanner/utilities/constraints.dart';
import 'package:map/map.dart' as flutter_map;

class FullScreenDialog extends StatefulWidget {
  String _skillOne = "You have";
  String _skillTwo = "not Added";
  String _skillThree = "any skills yet";

  @override
  FullScreenDialogState createState() => new FullScreenDialogState();
}

class FullScreenDialogState extends State<FullScreenDialog> {
  TextEditingController _skillOneController = new TextEditingController();
  TextEditingController _skillTwoController = new TextEditingController();

  TextEditingController _skillThreeController = new TextEditingController();

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
              controller: _skillOneController,
            ),
            ElevatedButton(
              onPressed: () {},
              child: "Выбрать локацию".text.make().click(() {}).make(),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      widget._skillThree = _skillThreeController.text;
                      widget._skillTwo = _skillTwoController.text;
                      widget._skillOne = _skillOneController.text;
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
  int _selectedIndex = 0;

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

              print('${location.longitude}, ${location.latitude}');
              print('${clicked.dx}, ${clicked.dy}');
              print('${details.localPosition.dx}, ${details.localPosition.dy}');
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

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    // if (picked != null && picked != selectedDate)
    //   setState(() {
    //     selectedDate = picked;
    //   });
  }

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: list.length, vsync: this);

    _controller.addListener(() {
      setState(() {
        _selectedIndex = _controller.index;
      });
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
            print(travel);

            return Scaffold(
              appBar: AppBar(
                title: "Путешествие в ${travel.name!}".text.make(),
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
                              builder: (context) => FullScreenDialog(),
                            );
                          }),
                      IconButton(icon: const Icon(Icons.add), onPressed: () {}),
                      IconButton(icon: const Icon(Icons.add), onPressed: () {})
                    ][_controller.index - 1]
                  : null,
              body: TabBarView(
                controller: _controller,
                children: [
                  ListView(
                    children: [
                      TpTextField(
                        icon: const Icon(Icons.info_outlined),
                        hint: "Название",
                        value: travel.name,
                        onChanged: (name) {
                          FirebaseFirestore.instance
                              .collection("travels")
                              .doc(widget.travelId)
                              .update({"name": name});
                        },
                      ),
                      TpTextField(
                        icon: const Icon(Icons.info_outlined),
                        hint: "Описание",
                        value: travel.description,
                      ),
                      HStack([
                        IconButton(
                            icon: const Icon(Icons.date_range),
                            onPressed: () {
                              _selectDate(context);
                            }),
                        Text(travel.date.toString()),
                      ])
                          .box
                          .border(color: context.theme.accentColor)
                          .rounded
                          .make(),
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
                            onChanged: (state) {})
                      ]).box.margin(const EdgeInsets.only(left: 12)).make()
                    ]
                        .map((e) => e.box
                            .margin(const EdgeInsets.only(bottom: 8))
                            .make())
                        .toList(),
                  ).p8(),
                  if (travel.locations != null)
                    ListView.builder(
                      itemBuilder: (context, index) {
                        final location = travel.locations![index];
                        return HStack(
                          [
                            index.text
                                .color(context.theme.accentColor)
                                .make()
                                .box
                                .margin(const EdgeInsets.only(right: 6))
                                .make(),
                            location.name!.text.bold.make()
                          ],
                        )
                            .box
                            .padding(const EdgeInsets.all(10))
                            .make()
                            .card
                            .make()
                            .onTap(() {
                          showMap();
                        });
                      },
                      itemCount: travel.locations!.length,
                    )
                  else
                    "Нет локаций".text.make(),
                  if (travel.goodies != null)
                    ListView.builder(
                      itemBuilder: (context, index) {
                        final goodie = travel.goodies![index];
                        return HStack(
                          [
                            index.text
                                .color(context.theme.accentColor)
                                .make()
                                .box
                                .margin(const EdgeInsets.only(right: 6))
                                .make(),
                            goodie.name!.text.bold.make()
                          ],
                        )
                            .box
                            .padding(const EdgeInsets.all(10))
                            .make()
                            .card
                            .make();
                      },
                      itemCount: travel.goodies!.length,
                    )
                  else
                    "Нет товаров".text.make(),
                  if (travel.travellers != null)
                    Center(
                      child: Text(
                        travel.travellers!.first.userId!,
                        style: const TextStyle(fontSize: 40),
                      ),
                    )
                  else
                    "Нет участников".text.make(),
                ],
              ),
            );
          }),
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
