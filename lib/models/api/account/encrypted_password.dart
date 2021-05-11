import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'value.dart';

part 'encrypted_password.freezed.dart';
part 'encrypted_password.g.dart';

@freezed
class EncryptedPassword with _$EncryptedPassword {
  factory EncryptedPassword({
    @JsonKey(name: 'value') Value? value,
  }) = _EncryptedPassword;

  factory EncryptedPassword.fromJson(Map<String, dynamic> json) =>
      _$EncryptedPasswordFromJson(json);
}
