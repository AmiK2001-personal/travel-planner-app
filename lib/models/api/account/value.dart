import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'value.freezed.dart';
part 'value.g.dart';

@freezed
class Value with _$Value {
  factory Value({
    @JsonKey(name: 'hash') String? hash,
    @JsonKey(name: 'salt') String? salt,
  }) = _Value;

  factory Value.fromJson(Map<String, dynamic> json) => _$ValueFromJson(json);
}
