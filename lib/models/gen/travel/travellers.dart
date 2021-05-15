import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'travellers.freezed.dart';
part 'travellers.g.dart';

@freezed
class Travellers with _$Travellers {
  factory Travellers({
    @JsonKey(name: 'role_id') String? roleId,
    @JsonKey(name: 'user_id') String? userId,
  }) = _Travellers;

  factory Travellers.fromJson(Map<String, dynamic> json) =>
      _$TravellersFromJson(json);
}
