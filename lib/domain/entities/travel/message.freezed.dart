// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Message _$MessageFromJson(Map<String, dynamic> json) {
  return _Message.fromJson(json);
}

/// @nodoc
class _$MessageTearOff {
  const _$MessageTearOff();

  _Message call(
      {@JsonKey(name: 'sender_id') required String senderId,
      @JsonKey(name: 'sending_time') required String sendingTime,
      @JsonKey(name: 'text') required String text}) {
    return _Message(
      senderId: senderId,
      sendingTime: sendingTime,
      text: text,
    );
  }

  Message fromJson(Map<String, Object> json) {
    return Message.fromJson(json);
  }
}

/// @nodoc
const $Message = _$MessageTearOff();

/// @nodoc
mixin _$Message {
  @JsonKey(name: 'sender_id')
  String get senderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'sending_time')
  String get sendingTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'text')
  String get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageCopyWith<Message> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageCopyWith<$Res> {
  factory $MessageCopyWith(Message value, $Res Function(Message) then) =
      _$MessageCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'sender_id') String senderId,
      @JsonKey(name: 'sending_time') String sendingTime,
      @JsonKey(name: 'text') String text});
}

/// @nodoc
class _$MessageCopyWithImpl<$Res> implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._value, this._then);

  final Message _value;
  // ignore: unused_field
  final $Res Function(Message) _then;

  @override
  $Res call({
    Object? senderId = freezed,
    Object? sendingTime = freezed,
    Object? text = freezed,
  }) {
    return _then(_value.copyWith(
      senderId: senderId == freezed
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
      sendingTime: sendingTime == freezed
          ? _value.sendingTime
          : sendingTime // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$MessageCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$MessageCopyWith(_Message value, $Res Function(_Message) then) =
      __$MessageCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'sender_id') String senderId,
      @JsonKey(name: 'sending_time') String sendingTime,
      @JsonKey(name: 'text') String text});
}

/// @nodoc
class __$MessageCopyWithImpl<$Res> extends _$MessageCopyWithImpl<$Res>
    implements _$MessageCopyWith<$Res> {
  __$MessageCopyWithImpl(_Message _value, $Res Function(_Message) _then)
      : super(_value, (v) => _then(v as _Message));

  @override
  _Message get _value => super._value as _Message;

  @override
  $Res call({
    Object? senderId = freezed,
    Object? sendingTime = freezed,
    Object? text = freezed,
  }) {
    return _then(_Message(
      senderId: senderId == freezed
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
      sendingTime: sendingTime == freezed
          ? _value.sendingTime
          : sendingTime // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Message implements _Message {
  _$_Message(
      {@JsonKey(name: 'sender_id') required this.senderId,
      @JsonKey(name: 'sending_time') required this.sendingTime,
      @JsonKey(name: 'text') required this.text});

  factory _$_Message.fromJson(Map<String, dynamic> json) =>
      _$_$_MessageFromJson(json);

  @override
  @JsonKey(name: 'sender_id')
  final String senderId;
  @override
  @JsonKey(name: 'sending_time')
  final String sendingTime;
  @override
  @JsonKey(name: 'text')
  final String text;

  @override
  String toString() {
    return 'Message(senderId: $senderId, sendingTime: $sendingTime, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Message &&
            (identical(other.senderId, senderId) ||
                const DeepCollectionEquality()
                    .equals(other.senderId, senderId)) &&
            (identical(other.sendingTime, sendingTime) ||
                const DeepCollectionEquality()
                    .equals(other.sendingTime, sendingTime)) &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(senderId) ^
      const DeepCollectionEquality().hash(sendingTime) ^
      const DeepCollectionEquality().hash(text);

  @JsonKey(ignore: true)
  @override
  _$MessageCopyWith<_Message> get copyWith =>
      __$MessageCopyWithImpl<_Message>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MessageToJson(this);
  }
}

abstract class _Message implements Message {
  factory _Message(
      {@JsonKey(name: 'sender_id') required String senderId,
      @JsonKey(name: 'sending_time') required String sendingTime,
      @JsonKey(name: 'text') required String text}) = _$_Message;

  factory _Message.fromJson(Map<String, dynamic> json) = _$_Message.fromJson;

  @override
  @JsonKey(name: 'sender_id')
  String get senderId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'sending_time')
  String get sendingTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'text')
  String get text => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MessageCopyWith<_Message> get copyWith =>
      throw _privateConstructorUsedError;
}
