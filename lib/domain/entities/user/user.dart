import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  factory User({
    @JsonKey(name: 'login') String? login,
    @JsonKey(name: 'password') String? password,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'personal_info_id') String? personalInfoId,
    @JsonKey(name: 'photo') String? photo,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
