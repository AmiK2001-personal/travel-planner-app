// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'personal_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PersonalInfo _$_$_PersonalInfoFromJson(Map<String, dynamic> json) {
  return _$_PersonalInfo(
    firstname: json['firstname'] as String?,
    lastname: json['lastname'] as String?,
    patronymic: json['patronymic'] as String?,
    birthDate: json['birth_date'] as String?,
    phone: json['phone'] as String?,
    favoriteTravels: (json['favorite_travels'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
  );
}

Map<String, dynamic> _$_$_PersonalInfoToJson(_$_PersonalInfo instance) =>
    <String, dynamic>{
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'patronymic': instance.patronymic,
      'birth_date': instance.birthDate,
      'phone': instance.phone,
      'favorite_travels': instance.favoriteTravels,
    };
