// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geopoint.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GeoPoint _$_$_GeoPointFromJson(Map<String, dynamic> json) {
  return _$_GeoPoint(
    latitude: (json['latitude'] as num?)?.toDouble(),
    longitude: (json['longitude'] as num?)?.toDouble(),
  );
}

Map<String, dynamic> _$_$_GeoPointToJson(_$_GeoPoint instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
