// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'goodies.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Goodies _$GoodiesFromJson(Map<String, dynamic> json) {
  return _Goodies.fromJson(json);
}

/// @nodoc
class _$GoodiesTearOff {
  const _$GoodiesTearOff();

  _Goodies call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'price') int? price,
      @JsonKey(name: 'quantity') int? quantity}) {
    return _Goodies(
      name: name,
      price: price,
      quantity: quantity,
    );
  }

  Goodies fromJson(Map<String, Object> json) {
    return Goodies.fromJson(json);
  }
}

/// @nodoc
const $Goodies = _$GoodiesTearOff();

/// @nodoc
mixin _$Goodies {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  int? get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'quantity')
  int? get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GoodiesCopyWith<Goodies> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoodiesCopyWith<$Res> {
  factory $GoodiesCopyWith(Goodies value, $Res Function(Goodies) then) =
      _$GoodiesCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'price') int? price,
      @JsonKey(name: 'quantity') int? quantity});
}

/// @nodoc
class _$GoodiesCopyWithImpl<$Res> implements $GoodiesCopyWith<$Res> {
  _$GoodiesCopyWithImpl(this._value, this._then);

  final Goodies _value;
  // ignore: unused_field
  final $Res Function(Goodies) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? price = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$GoodiesCopyWith<$Res> implements $GoodiesCopyWith<$Res> {
  factory _$GoodiesCopyWith(_Goodies value, $Res Function(_Goodies) then) =
      __$GoodiesCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'price') int? price,
      @JsonKey(name: 'quantity') int? quantity});
}

/// @nodoc
class __$GoodiesCopyWithImpl<$Res> extends _$GoodiesCopyWithImpl<$Res>
    implements _$GoodiesCopyWith<$Res> {
  __$GoodiesCopyWithImpl(_Goodies _value, $Res Function(_Goodies) _then)
      : super(_value, (v) => _then(v as _Goodies));

  @override
  _Goodies get _value => super._value as _Goodies;

  @override
  $Res call({
    Object? name = freezed,
    Object? price = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_Goodies(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Goodies with DiagnosticableTreeMixin implements _Goodies {
  _$_Goodies(
      {@JsonKey(name: 'name') this.name,
      @JsonKey(name: 'price') this.price,
      @JsonKey(name: 'quantity') this.quantity});

  factory _$_Goodies.fromJson(Map<String, dynamic> json) =>
      _$_$_GoodiesFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'price')
  final int? price;
  @override
  @JsonKey(name: 'quantity')
  final int? quantity;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Goodies(name: $name, price: $price, quantity: $quantity)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Goodies'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('price', price))
      ..add(DiagnosticsProperty('quantity', quantity));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Goodies &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(quantity);

  @JsonKey(ignore: true)
  @override
  _$GoodiesCopyWith<_Goodies> get copyWith =>
      __$GoodiesCopyWithImpl<_Goodies>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GoodiesToJson(this);
  }
}

abstract class _Goodies implements Goodies {
  factory _Goodies(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'price') int? price,
      @JsonKey(name: 'quantity') int? quantity}) = _$_Goodies;

  factory _Goodies.fromJson(Map<String, dynamic> json) = _$_Goodies.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'price')
  int? get price => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'quantity')
  int? get quantity => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GoodiesCopyWith<_Goodies> get copyWith =>
      throw _privateConstructorUsedError;
}
