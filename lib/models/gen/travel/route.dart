import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travelplanner/models/gen/travel/geopoint.dart';

part 'route.freezed.dart';
part 'route.g.dart';

@freezed
class Route with _$Route {
  factory Route({
    @JsonKey(name: 'from') GeoPoint? from,
    @JsonKey(name: 'to') GeoPoint? to,
  }) = _Route;

  factory Route.fromJson(Map<String, dynamic> json) => _$RouteFromJson(json);
}
