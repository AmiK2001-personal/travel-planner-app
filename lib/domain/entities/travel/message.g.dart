// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Message _$_$_MessageFromJson(Map<String, dynamic> json) {
  return _$_Message(
    senderId: Id.fromJson(json['sender_id'] as Map<String, dynamic>),
    sendingTime: json['sending_time'] as String,
    text: json['text'] as String,
  );
}

Map<String, dynamic> _$_$_MessageToJson(_$_Message instance) =>
    <String, dynamic>{
      'sender_id': instance.senderId,
      'sending_time': instance.sendingTime,
      'text': instance.text,
    };
