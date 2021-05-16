import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'personal_info.freezed.dart';
part 'personal_info.g.dart';

@freezed
class PersonalInfo with _$PersonalInfo {
  factory PersonalInfo({
    @JsonKey(name: 'firstname') String? firstname,
    @JsonKey(name: 'lastname') String? lastname,
    @JsonKey(name: 'patronymic') String? patronymic,
    @JsonKey(name: 'birth_date') String? birthDate,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'favorite_travels') List<String>? favoriteTravels,
  }) = _PersonalInfo;

  factory PersonalInfo.fromJson(Map<String, dynamic> json) =>
      _$PersonalInfoFromJson(json);
}