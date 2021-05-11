// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Account _$_$_AccountFromJson(Map<String, dynamic> json) {
  return _$_Account(
    id: json['id'] as String?,
    login: json['login'] as String?,
    encryptedPassword: json['encryptedPassword'] == null
        ? null
        : EncryptedPassword.fromJson(
            json['encryptedPassword'] as Map<String, dynamic>),
    password: json['password'],
    personalInfo: json['personalInfo'] == null
        ? null
        : PersonalInfo.fromJson(json['personalInfo'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_AccountToJson(_$_Account instance) =>
    <String, dynamic>{
      'id': instance.id,
      'login': instance.login,
      'encryptedPassword': instance.encryptedPassword,
      'password': instance.password,
      'personalInfo': instance.personalInfo,
    };
