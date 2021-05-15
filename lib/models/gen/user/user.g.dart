// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$_$_UserFromJson(Map<String, dynamic> json) {
  return _$_User(
    login: json['login'] as String?,
    password: json['password'] as String?,
    email: json['email'] as String?,
    personalInfoId: json['personal_info_id'] as String?,
    photo: json['photo'] as String?,
  );
}

Map<String, dynamic> _$_$_UserToJson(_$_User instance) => <String, dynamic>{
      'login': instance.login,
      'password': instance.password,
      'email': instance.email,
      'personal_info_id': instance.personalInfoId,
      'photo': instance.photo,
    };
