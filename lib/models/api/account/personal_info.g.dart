// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'personal_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PersonalInfo _$_$_PersonalInfoFromJson(Map<String, dynamic> json) {
  return _$_PersonalInfo(
    firstname: json['firstname'] as String?,
    lastname: json['lastname'] as String?,
    patronymic: json['patronymic'] == null
        ? null
        : Patronymic.fromJson(json['patronymic'] as Map<String, dynamic>),
    age: json['age'] == null
        ? null
        : Age.fromJson(json['age'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_PersonalInfoToJson(_$_PersonalInfo instance) =>
    <String, dynamic>{
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'patronymic': instance.patronymic,
      'age': instance.age,
    };
