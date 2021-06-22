import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:travelplanner/data/repositories/travel_remote_data_source.dart';
import 'package:travelplanner/domain/entities/travel/geopoint.dart';
import 'package:travelplanner/domain/entities/travel/locations.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:supercharged/supercharged.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

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

  Completer<GoogleMapController> _controller = Completer();

  final LatLng _center = const LatLng(45.521563, -122.677433);

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
            GoogleMap(
                onMapCreated: (GoogleMapController controller) {
                  _controller.complete(controller);
                },
                initialCameraPosition: CameraPosition(
                  target: LatLng(37.43296265331129, -122.08832357078792),
                )).h60(context),
            Row(
              children: <Widget>[
                Expanded(
                  child: ElevatedButton(
                    onPressed: () async {
                      final latitude = latitudetudeController.text.toDouble();
                      final longitude = longitudeController.text.toDouble();
                      final location = Locations(
                          geopoint: Geopoint(
                              latitude: latitude!, longitude: longitude!),
                          name: nameController.text);
                      Get.find<TravelRemoteDataSource>().addLocation(
                          location, widget.locations, widget.travelId);
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
