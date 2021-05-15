// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Travel _$_$_TravelFromJson(Map<String, dynamic> json) {
  return _$_Travel(
    name: json['name'] as String?,
    rating: json['rating'] as int?,
    images:
        (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
    goodies: (json['goodies'] as List<dynamic>?)
        ?.map((e) => Goodies.fromJson(e as Map<String, dynamic>))
        .toList(),
    isPublic: json['is_public'] as bool?,
    locations: (json['locations'] as List<dynamic>?)
        ?.map((e) => Locations.fromJson(e as Map<String, dynamic>))
        .toList(),
    transportWastes: (json['transport_wastes'] as List<dynamic>?)
        ?.map((e) => TransportWastes.fromJson(e as Map<String, dynamic>))
        .toList(),
    travellers: (json['travellers'] as List<dynamic>?)
        ?.map((e) => Travellers.fromJson(e as Map<String, dynamic>))
        .toList(),
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    description: json['description'] as String?,
  );
}

Map<String, dynamic> _$_$_TravelToJson(_$_Travel instance) => <String, dynamic>{
      'name': instance.name,
      'rating': instance.rating,
      'images': instance.images,
      'goodies': instance.goodies,
      'is_public': instance.isPublic,
      'locations': instance.locations,
      'transport_wastes': instance.transportWastes,
      'travellers': instance.travellers,
      'date': instance.date?.toIso8601String(),
      'description': instance.description,
    };
