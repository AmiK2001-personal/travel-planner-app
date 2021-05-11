import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'age.freezed.dart';
part 'age.g.dart';

@freezed
class Age with _$Age {
  factory Age({
    @JsonKey(name: 'value') int? value,
  }) = _Age;

  factory Age.fromJson(Map<String, dynamic> json) => _$AgeFromJson(json);
}
