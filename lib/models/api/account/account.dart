import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'encrypted_password.dart';
import 'personal_info.dart';

part 'account.freezed.dart';
part 'account.g.dart';

@freezed
class Account with _$Account {
  factory Account({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'login') String? login,
    @JsonKey(name: 'encryptedPassword') EncryptedPassword? encryptedPassword,
    @JsonKey(name: 'password') Object? password,
    @JsonKey(name: 'personalInfo') PersonalInfo? personalInfo,
  }) = _Account;

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);
}
