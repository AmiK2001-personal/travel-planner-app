import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travelplanner/data/models/firebase/firebase_image.dart';

import 'goodies.dart';
import 'locations.dart';
import 'transport_wastes.dart';
import 'travellers.dart';

part 'travel.freezed.dart';
part 'travel.g.dart';

// class TimestampConverter implements JsonConverter<DateTime, String> {
//   const TimestampConverter();

//   @override
//   DateTime fromJson(String timestamp) {
//     return DateTime.parse(timestamp);
//   }

//   @override
//   String toJson(DateTime date) =>
//       Timestamp.fromDate(date).toDate().toIso8601String();
// }

@freezed
class Travel with _$Travel {
  factory Travel({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'rating') int? rating,
    @JsonKey(name: 'images') List<FirebaseImage>? images,
    @JsonKey(name: 'goodies') List<Goodies>? goodies,
    @JsonKey(name: 'is_public') bool? isPublic,
    @JsonKey(name: 'locations') List<Locations>? locations,
    @JsonKey(name: 'transport_wastes') List<TransportWastes>? transportWastes,
    @JsonKey(name: 'travellers') List<Travellers>? travellers,
    @JsonKey(name: 'date') String? date,
    @JsonKey(name: 'description') String? description,
  }) = _Travel;

  factory Travel.fromJson(Map<String, dynamic> json) => _$TravelFromJson(json);
}
