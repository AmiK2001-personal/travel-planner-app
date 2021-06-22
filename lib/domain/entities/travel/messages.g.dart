// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'messages.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Messages _$_$_MessagesFromJson(Map<String, dynamic> json) {
  return _$_Messages(
    messages: (json['messages'] as List<dynamic>)
        .map((e) => Message.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_MessagesToJson(_$_Messages instance) =>
    <String, dynamic>{
      'messages': instance.messages,
    };
