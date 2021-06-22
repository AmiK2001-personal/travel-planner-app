// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'personal_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PersonalInfo _$_$_PersonalInfoFromJson(Map<String, dynamic> json) {
  return _$_PersonalInfo(
    userId: json['user_id'] as String?,
    login: json['login'] as String?,
    avatar: json['avatar'] as String?,
    firstname: json['firstname'] as String?,
    lastname: json['lastname'] as String?,
    patronymic: json['patronymic'] as String?,
  );
}

Map<String, dynamic> _$_$_PersonalInfoToJson(_$_PersonalInfo instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'login': instance.login,
      'avatar': instance.avatar,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'patronymic': instance.patronymic,
    };
