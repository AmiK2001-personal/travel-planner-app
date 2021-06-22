// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'goodies.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Goodies _$_$_GoodiesFromJson(Map<String, dynamic> json) {
  return _$_Goodies(
    name: json['name'] as String?,
    price: (json['price'] as num?)?.toDouble(),
    quantity: json['quantity'] as int?,
  );
}

Map<String, dynamic> _$_$_GoodiesToJson(_$_Goodies instance) =>
    <String, dynamic>{
      'name': instance.name,
      'price': instance.price,
      'quantity': instance.quantity,
    };
