// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'messages.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Messages _$MessagesFromJson(Map<String, dynamic> json) {
  return _Messages.fromJson(json);
}

/// @nodoc
class _$MessagesTearOff {
  const _$MessagesTearOff();

  _Messages call({@JsonKey(name: 'messages') required List<Message> messages}) {
    return _Messages(
      messages: messages,
    );
  }

  Messages fromJson(Map<String, Object> json) {
    return Messages.fromJson(json);
  }
}

/// @nodoc
const $Messages = _$MessagesTearOff();

/// @nodoc
mixin _$Messages {
  @JsonKey(name: 'messages')
  List<Message> get messages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessagesCopyWith<Messages> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessagesCopyWith<$Res> {
  factory $MessagesCopyWith(Messages value, $Res Function(Messages) then) =
      _$MessagesCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'messages') List<Message> messages});
}

/// @nodoc
class _$MessagesCopyWithImpl<$Res> implements $MessagesCopyWith<$Res> {
  _$MessagesCopyWithImpl(this._value, this._then);

  final Messages _value;
  // ignore: unused_field
  final $Res Function(Messages) _then;

  @override
  $Res call({
    Object? messages = freezed,
  }) {
    return _then(_value.copyWith(
      messages: messages == freezed
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
    ));
  }
}

/// @nodoc
abstract class _$MessagesCopyWith<$Res> implements $MessagesCopyWith<$Res> {
  factory _$MessagesCopyWith(_Messages value, $Res Function(_Messages) then) =
      __$MessagesCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'messages') List<Message> messages});
}

/// @nodoc
class __$MessagesCopyWithImpl<$Res> extends _$MessagesCopyWithImpl<$Res>
    implements _$MessagesCopyWith<$Res> {
  __$MessagesCopyWithImpl(_Messages _value, $Res Function(_Messages) _then)
      : super(_value, (v) => _then(v as _Messages));

  @override
  _Messages get _value => super._value as _Messages;

  @override
  $Res call({
    Object? messages = freezed,
  }) {
    return _then(_Messages(
      messages: messages == freezed
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Messages implements _Messages {
  _$_Messages({@JsonKey(name: 'messages') required this.messages});

  factory _$_Messages.fromJson(Map<String, dynamic> json) =>
      _$_$_MessagesFromJson(json);

  @override
  @JsonKey(name: 'messages')
  final List<Message> messages;

  @override
  String toString() {
    return 'Messages(messages: $messages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Messages &&
            (identical(other.messages, messages) ||
                const DeepCollectionEquality()
                    .equals(other.messages, messages)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(messages);

  @JsonKey(ignore: true)
  @override
  _$MessagesCopyWith<_Messages> get copyWith =>
      __$MessagesCopyWithImpl<_Messages>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MessagesToJson(this);
  }
}

abstract class _Messages implements Messages {
  factory _Messages(
          {@JsonKey(name: 'messages') required List<Message> messages}) =
      _$_Messages;

  factory _Messages.fromJson(Map<String, dynamic> json) = _$_Messages.fromJson;

  @override
  @JsonKey(name: 'messages')
  List<Message> get messages => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MessagesCopyWith<_Messages> get copyWith =>
      throw _privateConstructorUsedError;
}
