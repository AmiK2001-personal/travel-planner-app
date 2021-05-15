// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'personal_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PersonalInfo _$PersonalInfoFromJson(Map<String, dynamic> json) {
  return _PersonalInfo.fromJson(json);
}

/// @nodoc
class _$PersonalInfoTearOff {
  const _$PersonalInfoTearOff();

  _PersonalInfo call(
      {@JsonKey(name: 'firstname') String? firstname,
      @JsonKey(name: 'lastname') String? lastname,
      @JsonKey(name: 'patronymic') String? patronymic,
      @JsonKey(name: 'birth_date') String? birthDate,
      @JsonKey(name: 'phone') String? phone,
      @JsonKey(name: 'favorite_travels') List<String>? favoriteTravels}) {
    return _PersonalInfo(
      firstname: firstname,
      lastname: lastname,
      patronymic: patronymic,
      birthDate: birthDate,
      phone: phone,
      favoriteTravels: favoriteTravels,
    );
  }

  PersonalInfo fromJson(Map<String, Object> json) {
    return PersonalInfo.fromJson(json);
  }
}

/// @nodoc
const $PersonalInfo = _$PersonalInfoTearOff();

/// @nodoc
mixin _$PersonalInfo {
  @JsonKey(name: 'firstname')
  String? get firstname => throw _privateConstructorUsedError;
  @JsonKey(name: 'lastname')
  String? get lastname => throw _privateConstructorUsedError;
  @JsonKey(name: 'patronymic')
  String? get patronymic => throw _privateConstructorUsedError;
  @JsonKey(name: 'birth_date')
  String? get birthDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone')
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'favorite_travels')
  List<String>? get favoriteTravels => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonalInfoCopyWith<PersonalInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonalInfoCopyWith<$Res> {
  factory $PersonalInfoCopyWith(
          PersonalInfo value, $Res Function(PersonalInfo) then) =
      _$PersonalInfoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'firstname') String? firstname,
      @JsonKey(name: 'lastname') String? lastname,
      @JsonKey(name: 'patronymic') String? patronymic,
      @JsonKey(name: 'birth_date') String? birthDate,
      @JsonKey(name: 'phone') String? phone,
      @JsonKey(name: 'favorite_travels') List<String>? favoriteTravels});
}

/// @nodoc
class _$PersonalInfoCopyWithImpl<$Res> implements $PersonalInfoCopyWith<$Res> {
  _$PersonalInfoCopyWithImpl(this._value, this._then);

  final PersonalInfo _value;
  // ignore: unused_field
  final $Res Function(PersonalInfo) _then;

  @override
  $Res call({
    Object? firstname = freezed,
    Object? lastname = freezed,
    Object? patronymic = freezed,
    Object? birthDate = freezed,
    Object? phone = freezed,
    Object? favoriteTravels = freezed,
  }) {
    return _then(_value.copyWith(
      firstname: firstname == freezed
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String?,
      lastname: lastname == freezed
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String?,
      patronymic: patronymic == freezed
          ? _value.patronymic
          : patronymic // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDate: birthDate == freezed
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      favoriteTravels: favoriteTravels == freezed
          ? _value.favoriteTravels
          : favoriteTravels // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
abstract class _$PersonalInfoCopyWith<$Res>
    implements $PersonalInfoCopyWith<$Res> {
  factory _$PersonalInfoCopyWith(
          _PersonalInfo value, $Res Function(_PersonalInfo) then) =
      __$PersonalInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'firstname') String? firstname,
      @JsonKey(name: 'lastname') String? lastname,
      @JsonKey(name: 'patronymic') String? patronymic,
      @JsonKey(name: 'birth_date') String? birthDate,
      @JsonKey(name: 'phone') String? phone,
      @JsonKey(name: 'favorite_travels') List<String>? favoriteTravels});
}

/// @nodoc
class __$PersonalInfoCopyWithImpl<$Res> extends _$PersonalInfoCopyWithImpl<$Res>
    implements _$PersonalInfoCopyWith<$Res> {
  __$PersonalInfoCopyWithImpl(
      _PersonalInfo _value, $Res Function(_PersonalInfo) _then)
      : super(_value, (v) => _then(v as _PersonalInfo));

  @override
  _PersonalInfo get _value => super._value as _PersonalInfo;

  @override
  $Res call({
    Object? firstname = freezed,
    Object? lastname = freezed,
    Object? patronymic = freezed,
    Object? birthDate = freezed,
    Object? phone = freezed,
    Object? favoriteTravels = freezed,
  }) {
    return _then(_PersonalInfo(
      firstname: firstname == freezed
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String?,
      lastname: lastname == freezed
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String?,
      patronymic: patronymic == freezed
          ? _value.patronymic
          : patronymic // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDate: birthDate == freezed
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      favoriteTravels: favoriteTravels == freezed
          ? _value.favoriteTravels
          : favoriteTravels // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PersonalInfo with DiagnosticableTreeMixin implements _PersonalInfo {
  _$_PersonalInfo(
      {@JsonKey(name: 'firstname') this.firstname,
      @JsonKey(name: 'lastname') this.lastname,
      @JsonKey(name: 'patronymic') this.patronymic,
      @JsonKey(name: 'birth_date') this.birthDate,
      @JsonKey(name: 'phone') this.phone,
      @JsonKey(name: 'favorite_travels') this.favoriteTravels});

  factory _$_PersonalInfo.fromJson(Map<String, dynamic> json) =>
      _$_$_PersonalInfoFromJson(json);

  @override
  @JsonKey(name: 'firstname')
  final String? firstname;
  @override
  @JsonKey(name: 'lastname')
  final String? lastname;
  @override
  @JsonKey(name: 'patronymic')
  final String? patronymic;
  @override
  @JsonKey(name: 'birth_date')
  final String? birthDate;
  @override
  @JsonKey(name: 'phone')
  final String? phone;
  @override
  @JsonKey(name: 'favorite_travels')
  final List<String>? favoriteTravels;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PersonalInfo(firstname: $firstname, lastname: $lastname, patronymic: $patronymic, birthDate: $birthDate, phone: $phone, favoriteTravels: $favoriteTravels)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PersonalInfo'))
      ..add(DiagnosticsProperty('firstname', firstname))
      ..add(DiagnosticsProperty('lastname', lastname))
      ..add(DiagnosticsProperty('patronymic', patronymic))
      ..add(DiagnosticsProperty('birthDate', birthDate))
      ..add(DiagnosticsProperty('phone', phone))
      ..add(DiagnosticsProperty('favoriteTravels', favoriteTravels));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PersonalInfo &&
            (identical(other.firstname, firstname) ||
                const DeepCollectionEquality()
                    .equals(other.firstname, firstname)) &&
            (identical(other.lastname, lastname) ||
                const DeepCollectionEquality()
                    .equals(other.lastname, lastname)) &&
            (identical(other.patronymic, patronymic) ||
                const DeepCollectionEquality()
                    .equals(other.patronymic, patronymic)) &&
            (identical(other.birthDate, birthDate) ||
                const DeepCollectionEquality()
                    .equals(other.birthDate, birthDate)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.favoriteTravels, favoriteTravels) ||
                const DeepCollectionEquality()
                    .equals(other.favoriteTravels, favoriteTravels)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(firstname) ^
      const DeepCollectionEquality().hash(lastname) ^
      const DeepCollectionEquality().hash(patronymic) ^
      const DeepCollectionEquality().hash(birthDate) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(favoriteTravels);

  @JsonKey(ignore: true)
  @override
  _$PersonalInfoCopyWith<_PersonalInfo> get copyWith =>
      __$PersonalInfoCopyWithImpl<_PersonalInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PersonalInfoToJson(this);
  }
}

abstract class _PersonalInfo implements PersonalInfo {
  factory _PersonalInfo(
          {@JsonKey(name: 'firstname') String? firstname,
          @JsonKey(name: 'lastname') String? lastname,
          @JsonKey(name: 'patronymic') String? patronymic,
          @JsonKey(name: 'birth_date') String? birthDate,
          @JsonKey(name: 'phone') String? phone,
          @JsonKey(name: 'favorite_travels') List<String>? favoriteTravels}) =
      _$_PersonalInfo;

  factory _PersonalInfo.fromJson(Map<String, dynamic> json) =
      _$_PersonalInfo.fromJson;

  @override
  @JsonKey(name: 'firstname')
  String? get firstname => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'lastname')
  String? get lastname => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'patronymic')
  String? get patronymic => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'birth_date')
  String? get birthDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'phone')
  String? get phone => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'favorite_travels')
  List<String>? get favoriteTravels => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PersonalInfoCopyWith<_PersonalInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
