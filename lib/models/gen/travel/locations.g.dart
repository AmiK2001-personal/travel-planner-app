// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'locations.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Locations _$_$_LocationsFromJson(Map<String, dynamic> json) {
  return _$_Locations(
    name: json['name'] as String?,
    geopoint: json['geopoint'] == null
        ? null
        : GeoPoint.fromJson(json['geopoint'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_LocationsToJson(_$_Locations instance) =>
    <String, dynamic>{
      'name': instance.name,
      'geopoint': instance.geopoint,
    };
