import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'goodies.freezed.dart';
part 'goodies.g.dart';

@freezed
class Goodies with _$Goodies {
  factory Goodies({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'price') int? price,
    @JsonKey(name: 'quantity') int? quantity,
  }) = _Goodies;

  factory Goodies.fromJson(Map<String, dynamic> json) =>
      _$GoodiesFromJson(json);
}
