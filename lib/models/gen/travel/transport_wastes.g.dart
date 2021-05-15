// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transport_wastes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TransportWastes _$_$_TransportWastesFromJson(Map<String, dynamic> json) {
  return _$_TransportWastes(
    name: json['name'] as String?,
    route: json['route'] == null
        ? null
        : Route.fromJson(json['route'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_TransportWastesToJson(_$_TransportWastes instance) =>
    <String, dynamic>{
      'name': instance.name,
      'route': instance.route,
    };
