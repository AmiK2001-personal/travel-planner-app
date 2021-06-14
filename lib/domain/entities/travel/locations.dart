import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travelplanner/domain/entities/travel/geopoint.dart';

part 'locations.freezed.dart';
part 'locations.g.dart';

class GeopointConverter implements JsonConverter<Geopoint, GeoPoint> {
  const GeopointConverter();

  @override
  Geopoint fromJson(GeoPoint geopoint) {
    return Geopoint(latitude: geopoint.latitude, longitude: geopoint.longitude);
  }

  @override
  GeoPoint toJson(Geopoint geopoint) =>
      GeoPoint(geopoint.latitude, geopoint.longitude);
}

@freezed
class Locations with _$Locations {
  factory Locations({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'geopoint') Geopoint? geopoint,
  }) = _Locations;

  factory Locations.fromJson(Map<String, dynamic> json) =>
      _$LocationsFromJson(json);
}
