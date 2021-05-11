// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'paginated_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaginatedResponse _$PaginatedResponseFromJson(Map<String, dynamic> json) {
  return _PaginatedResponse.fromJson(json);
}

/// @nodoc
class _$PaginatedResponseTearOff {
  const _$PaginatedResponseTearOff();

  _PaginatedResponse call(
      {@JsonKey(name: 'count') int? count,
      @JsonKey(name: 'items') List<dynamic>? items}) {
    return _PaginatedResponse(
      count: count,
      items: items,
    );
  }

  PaginatedResponse fromJson(Map<String, Object> json) {
    return PaginatedResponse.fromJson(json);
  }
}

/// @nodoc
const $PaginatedResponse = _$PaginatedResponseTearOff();

/// @nodoc
mixin _$PaginatedResponse {
  @JsonKey(name: 'count')
  int? get count => throw _privateConstructorUsedError;
  @JsonKey(name: 'items')
  List<dynamic>? get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginatedResponseCopyWith<PaginatedResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedResponseCopyWith<$Res> {
  factory $PaginatedResponseCopyWith(
          PaginatedResponse value, $Res Function(PaginatedResponse) then) =
      _$PaginatedResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'count') int? count,
      @JsonKey(name: 'items') List<dynamic>? items});
}

/// @nodoc
class _$PaginatedResponseCopyWithImpl<$Res>
    implements $PaginatedResponseCopyWith<$Res> {
  _$PaginatedResponseCopyWithImpl(this._value, this._then);

  final PaginatedResponse _value;
  // ignore: unused_field
  final $Res Function(PaginatedResponse) _then;

  @override
  $Res call({
    Object? count = freezed,
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
abstract class _$PaginatedResponseCopyWith<$Res>
    implements $PaginatedResponseCopyWith<$Res> {
  factory _$PaginatedResponseCopyWith(
          _PaginatedResponse value, $Res Function(_PaginatedResponse) then) =
      __$PaginatedResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'count') int? count,
      @JsonKey(name: 'items') List<dynamic>? items});
}

/// @nodoc
class __$PaginatedResponseCopyWithImpl<$Res>
    extends _$PaginatedResponseCopyWithImpl<$Res>
    implements _$PaginatedResponseCopyWith<$Res> {
  __$PaginatedResponseCopyWithImpl(
      _PaginatedResponse _value, $Res Function(_PaginatedResponse) _then)
      : super(_value, (v) => _then(v as _PaginatedResponse));

  @override
  _PaginatedResponse get _value => super._value as _PaginatedResponse;

  @override
  $Res call({
    Object? count = freezed,
    Object? items = freezed,
  }) {
    return _then(_PaginatedResponse(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaginatedResponse
    with DiagnosticableTreeMixin
    implements _PaginatedResponse {
  _$_PaginatedResponse(
      {@JsonKey(name: 'count') this.count, @JsonKey(name: 'items') this.items});

  factory _$_PaginatedResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_PaginatedResponseFromJson(json);

  @override
  @JsonKey(name: 'count')
  final int? count;
  @override
  @JsonKey(name: 'items')
  final List<dynamic>? items;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PaginatedResponse(count: $count, items: $items)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PaginatedResponse'))
      ..add(DiagnosticsProperty('count', count))
      ..add(DiagnosticsProperty('items', items));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PaginatedResponse &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(items);

  @JsonKey(ignore: true)
  @override
  _$PaginatedResponseCopyWith<_PaginatedResponse> get copyWith =>
      __$PaginatedResponseCopyWithImpl<_PaginatedResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PaginatedResponseToJson(this);
  }
}

abstract class _PaginatedResponse implements PaginatedResponse {
  factory _PaginatedResponse(
      {@JsonKey(name: 'count') int? count,
      @JsonKey(name: 'items') List<dynamic>? items}) = _$_PaginatedResponse;

  factory _PaginatedResponse.fromJson(Map<String, dynamic> json) =
      _$_PaginatedResponse.fromJson;

  @override
  @JsonKey(name: 'count')
  int? get count => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'items')
  List<dynamic>? get items => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PaginatedResponseCopyWith<_PaginatedResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
