// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'menu_page_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MenuPageEventTearOff {
  const _$MenuPageEventTearOff();

  SelectedNavigationBarItemIdChanged selectedNavigationBarItemIdChanged(
      int navigationBarItemId) {
    return SelectedNavigationBarItemIdChanged(
      navigationBarItemId,
    );
  }
}

/// @nodoc
const $MenuPageEvent = _$MenuPageEventTearOff();

/// @nodoc
mixin _$MenuPageEvent {
  int get navigationBarItemId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int navigationBarItemId)
        selectedNavigationBarItemIdChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int navigationBarItemId)?
        selectedNavigationBarItemIdChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectedNavigationBarItemIdChanged value)
        selectedNavigationBarItemIdChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectedNavigationBarItemIdChanged value)?
        selectedNavigationBarItemIdChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MenuPageEventCopyWith<MenuPageEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuPageEventCopyWith<$Res> {
  factory $MenuPageEventCopyWith(
          MenuPageEvent value, $Res Function(MenuPageEvent) then) =
      _$MenuPageEventCopyWithImpl<$Res>;
  $Res call({int navigationBarItemId});
}

/// @nodoc
class _$MenuPageEventCopyWithImpl<$Res>
    implements $MenuPageEventCopyWith<$Res> {
  _$MenuPageEventCopyWithImpl(this._value, this._then);

  final MenuPageEvent _value;
  // ignore: unused_field
  final $Res Function(MenuPageEvent) _then;

  @override
  $Res call({
    Object? navigationBarItemId = freezed,
  }) {
    return _then(_value.copyWith(
      navigationBarItemId: navigationBarItemId == freezed
          ? _value.navigationBarItemId
          : navigationBarItemId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class $SelectedNavigationBarItemIdChangedCopyWith<$Res>
    implements $MenuPageEventCopyWith<$Res> {
  factory $SelectedNavigationBarItemIdChangedCopyWith(
          SelectedNavigationBarItemIdChanged value,
          $Res Function(SelectedNavigationBarItemIdChanged) then) =
      _$SelectedNavigationBarItemIdChangedCopyWithImpl<$Res>;
  @override
  $Res call({int navigationBarItemId});
}

/// @nodoc
class _$SelectedNavigationBarItemIdChangedCopyWithImpl<$Res>
    extends _$MenuPageEventCopyWithImpl<$Res>
    implements $SelectedNavigationBarItemIdChangedCopyWith<$Res> {
  _$SelectedNavigationBarItemIdChangedCopyWithImpl(
      SelectedNavigationBarItemIdChanged _value,
      $Res Function(SelectedNavigationBarItemIdChanged) _then)
      : super(_value, (v) => _then(v as SelectedNavigationBarItemIdChanged));

  @override
  SelectedNavigationBarItemIdChanged get _value =>
      super._value as SelectedNavigationBarItemIdChanged;

  @override
  $Res call({
    Object? navigationBarItemId = freezed,
  }) {
    return _then(SelectedNavigationBarItemIdChanged(
      navigationBarItemId == freezed
          ? _value.navigationBarItemId
          : navigationBarItemId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SelectedNavigationBarItemIdChanged
    implements SelectedNavigationBarItemIdChanged {
  const _$SelectedNavigationBarItemIdChanged(this.navigationBarItemId);

  @override
  final int navigationBarItemId;

  @override
  String toString() {
    return 'MenuPageEvent.selectedNavigationBarItemIdChanged(navigationBarItemId: $navigationBarItemId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SelectedNavigationBarItemIdChanged &&
            (identical(other.navigationBarItemId, navigationBarItemId) ||
                const DeepCollectionEquality()
                    .equals(other.navigationBarItemId, navigationBarItemId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(navigationBarItemId);

  @JsonKey(ignore: true)
  @override
  $SelectedNavigationBarItemIdChangedCopyWith<
          SelectedNavigationBarItemIdChanged>
      get copyWith => _$SelectedNavigationBarItemIdChangedCopyWithImpl<
          SelectedNavigationBarItemIdChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int navigationBarItemId)
        selectedNavigationBarItemIdChanged,
  }) {
    return selectedNavigationBarItemIdChanged(navigationBarItemId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int navigationBarItemId)?
        selectedNavigationBarItemIdChanged,
    required TResult orElse(),
  }) {
    if (selectedNavigationBarItemIdChanged != null) {
      return selectedNavigationBarItemIdChanged(navigationBarItemId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectedNavigationBarItemIdChanged value)
        selectedNavigationBarItemIdChanged,
  }) {
    return selectedNavigationBarItemIdChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectedNavigationBarItemIdChanged value)?
        selectedNavigationBarItemIdChanged,
    required TResult orElse(),
  }) {
    if (selectedNavigationBarItemIdChanged != null) {
      return selectedNavigationBarItemIdChanged(this);
    }
    return orElse();
  }
}

abstract class SelectedNavigationBarItemIdChanged implements MenuPageEvent {
  const factory SelectedNavigationBarItemIdChanged(int navigationBarItemId) =
      _$SelectedNavigationBarItemIdChanged;

  @override
  int get navigationBarItemId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $SelectedNavigationBarItemIdChangedCopyWith<
          SelectedNavigationBarItemIdChanged>
      get copyWith => throw _privateConstructorUsedError;
}
