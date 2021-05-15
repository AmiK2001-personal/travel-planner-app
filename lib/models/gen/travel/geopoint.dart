import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'geopoint.freezed.dart';
part 'geopoint.g.dart';

@freezed
class GeoPoint with _$GeoPoint {
  factory GeoPoint({
    @JsonKey(name: 'latitude') double? latitude,
    @JsonKey(name: 'longitude') double? longitude,
  }) = _GeoPoint;

  factory GeoPoint.fromJson(Map<String, dynamic> json) =>
      _$GeoPointFromJson(json);
}
