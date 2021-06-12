import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travelplanner/models/firebase_image.dart';

import 'goodies.dart';
import 'locations.dart';
import 'transport_wastes.dart';
import 'travellers.dart';

part 'travel.freezed.dart';
part 'travel.g.dart';

class TimestampConverter implements JsonConverter<DateTime, Timestamp> {
  const TimestampConverter();

  @override
  DateTime fromJson(Timestamp timestamp) {
    return timestamp.toDate();
  }

  @override
  Timestamp toJson(DateTime date) => Timestamp.fromDate(date);
}

@freezed
class Travel with _$Travel {
  factory Travel({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'rating') int? rating,
    @JsonKey(name: 'images') List<FirebaseImage>? images,
    @JsonKey(name: 'goodies') List<Goodies>? goodies,
    @JsonKey(name: 'is_public') bool? isPublic,
    @JsonKey(name: 'locations') List<Locations>? locations,
    @JsonKey(name: 'transport_wastes') List<TransportWastes>? transportWastes,
    @JsonKey(name: 'travellers') List<Travellers>? travellers,
    @TimestampConverter() @JsonKey(name: 'date') DateTime? date,
    @JsonKey(name: 'description') String? description,
  }) = _Travel;

  factory Travel.fromJson(Map<String, dynamic> json) => _$TravelFromJson(json);
}
