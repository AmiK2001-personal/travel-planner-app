import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travelplanner/data/models/firebase/firebase_image.dart';

part 'personal_info.freezed.dart';
part 'personal_info.g.dart';

@freezed
class PersonalInfo with _$PersonalInfo {
  factory PersonalInfo({
    @JsonKey(name: 'user_id') String? user_id,
    @JsonKey(name: 'login') String? login,
    @JsonKey(name: 'avatar') FirebaseImage? avatar,
    @JsonKey(name: 'firstname') String? firstname,
    @JsonKey(name: 'lastname') String? lastname,
    @JsonKey(name: 'patronymic') String? patronymic,
  }) = _PersonalInfo;

  factory PersonalInfo.fromJson(Map<String, dynamic> json) =>
      _$PersonalInfoFromJson(json);
}
