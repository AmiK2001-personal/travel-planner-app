import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'route.dart';

part 'transport_wastes.freezed.dart';
part 'transport_wastes.g.dart';

@freezed
class TransportWastes with _$TransportWastes {
  factory TransportWastes({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'route') Route? route,
  }) = _TransportWastes;

  factory TransportWastes.fromJson(Map<String, dynamic> json) =>
      _$TransportWastesFromJson(json);
}
