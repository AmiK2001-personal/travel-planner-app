import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travelplanner/models/gen/travel/geopoint.dart';

part 'locations.freezed.dart';
part 'locations.g.dart';

@freezed
class Locations with _$Locations {
  factory Locations({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'geopoint') GeoPoint? geopoint,
  }) = _Locations;

  factory Locations.fromJson(Map<String, dynamic> json) =>
      _$LocationsFromJson(json);
}
