// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firebase_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FirebaseImage _$_$_FirebaseImageFromJson(Map<String, dynamic> json) {
  return _$_FirebaseImage(
    imageType: _$enumDecode(_$FirebaseImageTypeEnumMap, json['image_type']),
    path: json['path'] as String,
  );
}

Map<String, dynamic> _$_$_FirebaseImageToJson(_$_FirebaseImage instance) =>
    <String, dynamic>{
      'image_type': _$FirebaseImageTypeEnumMap[instance.imageType],
      'path': instance.path,
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$FirebaseImageTypeEnumMap = {
  FirebaseImageType.storge: 'storge',
  FirebaseImageType.url: 'url',
};
