import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travelplanner/models/gen/travel/geopoint.dart';
import 'package:travelplanner/models/gen/travel/locations.dart';

part 'route.freezed.dart';
part 'route.g.dart';

@freezed
class Route with _$Route {
  factory Route({
    @JsonKey(name: 'from') Geopoint? from,
    @JsonKey(name: 'to') Geopoint? to,
  }) = _Route;

  factory Route.fromJson(Map<String, dynamic> json) => _$RouteFromJson(json);
}
