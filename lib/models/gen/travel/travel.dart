import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'goodies.dart';
import 'locations.dart';
import 'transport_wastes.dart';
import 'travellers.dart';

part 'travel.freezed.dart';
part 'travel.g.dart';

@freezed
class Travel with _$Travel {
  factory Travel({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'rating') int? rating,
    @JsonKey(name: 'images') List<String>? images,
    @JsonKey(name: 'goodies') List<Goodies>? goodies,
    @JsonKey(name: 'is_public') bool? isPublic,
    @JsonKey(name: 'locations') List<Locations>? locations,
    @JsonKey(name: 'transport_wastes') List<TransportWastes>? transportWastes,
    @JsonKey(name: 'travellers') List<Travellers>? travellers,
    @JsonKey(name: 'date') DateTime? date,
    @JsonKey(name: 'description') String? description,
  }) = _Travel;

  factory Travel.fromJson(Map<String, dynamic> json) => _$TravelFromJson(json);
}
