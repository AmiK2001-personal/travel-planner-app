import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'patronymic.freezed.dart';
part 'patronymic.g.dart';

@freezed
class Patronymic with _$Patronymic {
  factory Patronymic({
    @JsonKey(name: 'value') String? value,
  }) = _Patronymic;

  factory Patronymic.fromJson(Map<String, dynamic> json) =>
      _$PatronymicFromJson(json);
}
