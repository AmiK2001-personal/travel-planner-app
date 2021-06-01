// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Route _$_$_RouteFromJson(Map<String, dynamic> json) {
  return _$_Route(
    from: json['from'] == null
        ? null
        : Geopoint.fromJson(json['from'] as Map<String, dynamic>),
    to: json['to'] == null
        ? null
        : Geopoint.fromJson(json['to'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_RouteToJson(_$_Route instance) => <String, dynamic>{
      'from': instance.from,
      'to': instance.to,
    };
