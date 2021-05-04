// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'menu_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MenuPageStateTearOff {
  const _$MenuPageStateTearOff();

  _MenuPageState call({int selectedNavigationBarItemId = 0}) {
    return _MenuPageState(
      selectedNavigationBarItemId: selectedNavigationBarItemId,
    );
  }
}

/// @nodoc
const $MenuPageState = _$MenuPageStateTearOff();

/// @nodoc
mixin _$MenuPageState {
  int get selectedNavigationBarItemId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MenuPageStateCopyWith<MenuPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuPageStateCopyWith<$Res> {
  factory $MenuPageStateCopyWith(
          MenuPageState value, $Res Function(MenuPageState) then) =
      _$MenuPageStateCopyWithImpl<$Res>;
  $Res call({int selectedNavigationBarItemId});
}

/// @nodoc
class _$MenuPageStateCopyWithImpl<$Res>
    implements $MenuPageStateCopyWith<$Res> {
  _$MenuPageStateCopyWithImpl(this._value, this._then);

  final MenuPageState _value;
  // ignore: unused_field
  final $Res Function(MenuPageState) _then;

  @override
  $Res call({
    Object? selectedNavigationBarItemId = freezed,
  }) {
    return _then(_value.copyWith(
      selectedNavigationBarItemId: selectedNavigationBarItemId == freezed
          ? _value.selectedNavigationBarItemId
          : selectedNavigationBarItemId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$MenuPageStateCopyWith<$Res>
    implements $MenuPageStateCopyWith<$Res> {
  factory _$MenuPageStateCopyWith(
          _MenuPageState value, $Res Function(_MenuPageState) then) =
      __$MenuPageStateCopyWithImpl<$Res>;
  @override
  $Res call({int selectedNavigationBarItemId});
}

/// @nodoc
class __$MenuPageStateCopyWithImpl<$Res>
    extends _$MenuPageStateCopyWithImpl<$Res>
    implements _$MenuPageStateCopyWith<$Res> {
  __$MenuPageStateCopyWithImpl(
      _MenuPageState _value, $Res Function(_MenuPageState) _then)
      : super(_value, (v) => _then(v as _MenuPageState));

  @override
  _MenuPageState get _value => super._value as _MenuPageState;

  @override
  $Res call({
    Object? selectedNavigationBarItemId = freezed,
  }) {
    return _then(_MenuPageState(
      selectedNavigationBarItemId: selectedNavigationBarItemId == freezed
          ? _value.selectedNavigationBarItemId
          : selectedNavigationBarItemId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_MenuPageState implements _MenuPageState {
  const _$_MenuPageState({this.selectedNavigationBarItemId = 0});

  @JsonKey(defaultValue: 0)
  @override
  final int selectedNavigationBarItemId;

  @override
  String toString() {
    return 'MenuPageState(selectedNavigationBarItemId: $selectedNavigationBarItemId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MenuPageState &&
            (identical(other.selectedNavigationBarItemId,
                    selectedNavigationBarItemId) ||
                const DeepCollectionEquality().equals(
                    other.selectedNavigationBarItemId,
                    selectedNavigationBarItemId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(selectedNavigationBarItemId);

  @JsonKey(ignore: true)
  @override
  _$MenuPageStateCopyWith<_MenuPageState> get copyWith =>
      __$MenuPageStateCopyWithImpl<_MenuPageState>(this, _$identity);
}

abstract class _MenuPageState implements MenuPageState {
  const factory _MenuPageState({int selectedNavigationBarItemId}) =
      _$_MenuPageState;

  @override
  int get selectedNavigationBarItemId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MenuPageStateCopyWith<_MenuPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
