import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'geopoint.freezed.dart';
part 'geopoint.g.dart';

@freezed
class Geopoint with _$Geopoint {
  factory Geopoint({
    @Default(0.0) @JsonKey(name: 'latitude') double latitude,
    @Default(0.0) @JsonKey(name: 'longitude') double longitude,
  }) = _Geopoint;

  factory Geopoint.fromJson(Map<String, dynamic> json) =>
      _$GeopointFromJson(json);
}
