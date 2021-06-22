import 'package:freezed_annotation/freezed_annotation.dart';

part 'id.freezed.dart';
part 'id.g.dart';

@freezed
class Id with _$Id {
  factory Id({
    @JsonKey(name: 'id') required String id,
  }) = _Id;

  factory Id.fromJson(Map<String, dynamic> json) => _$IdFromJson(json);
}
