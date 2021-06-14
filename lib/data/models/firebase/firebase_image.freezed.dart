// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'firebase_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FirebaseImage _$FirebaseImageFromJson(Map<String, dynamic> json) {
  return _FirebaseImage.fromJson(json);
}

/// @nodoc
class _$FirebaseImageTearOff {
  const _$FirebaseImageTearOff();

  _FirebaseImage call(
      {@JsonKey(name: 'image_type')
          FirebaseImageType imageType = FirebaseImageType.url,
      @JsonKey(name: 'path')
          String path = ""}) {
    return _FirebaseImage(
      imageType: imageType,
      path: path,
    );
  }

  FirebaseImage fromJson(Map<String, Object> json) {
    return FirebaseImage.fromJson(json);
  }
}

/// @nodoc
const $FirebaseImage = _$FirebaseImageTearOff();

/// @nodoc
mixin _$FirebaseImage {
  @JsonKey(name: 'image_type')
  FirebaseImageType get imageType => throw _privateConstructorUsedError;
  @JsonKey(name: 'path')
  String get path => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FirebaseImageCopyWith<FirebaseImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirebaseImageCopyWith<$Res> {
  factory $FirebaseImageCopyWith(
          FirebaseImage value, $Res Function(FirebaseImage) then) =
      _$FirebaseImageCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'image_type') FirebaseImageType imageType,
      @JsonKey(name: 'path') String path});
}

/// @nodoc
class _$FirebaseImageCopyWithImpl<$Res>
    implements $FirebaseImageCopyWith<$Res> {
  _$FirebaseImageCopyWithImpl(this._value, this._then);

  final FirebaseImage _value;
  // ignore: unused_field
  final $Res Function(FirebaseImage) _then;

  @override
  $Res call({
    Object? imageType = freezed,
    Object? path = freezed,
  }) {
    return _then(_value.copyWith(
      imageType: imageType == freezed
          ? _value.imageType
          : imageType // ignore: cast_nullable_to_non_nullable
              as FirebaseImageType,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$FirebaseImageCopyWith<$Res>
    implements $FirebaseImageCopyWith<$Res> {
  factory _$FirebaseImageCopyWith(
          _FirebaseImage value, $Res Function(_FirebaseImage) then) =
      __$FirebaseImageCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'image_type') FirebaseImageType imageType,
      @JsonKey(name: 'path') String path});
}

/// @nodoc
class __$FirebaseImageCopyWithImpl<$Res>
    extends _$FirebaseImageCopyWithImpl<$Res>
    implements _$FirebaseImageCopyWith<$Res> {
  __$FirebaseImageCopyWithImpl(
      _FirebaseImage _value, $Res Function(_FirebaseImage) _then)
      : super(_value, (v) => _then(v as _FirebaseImage));

  @override
  _FirebaseImage get _value => super._value as _FirebaseImage;

  @override
  $Res call({
    Object? imageType = freezed,
    Object? path = freezed,
  }) {
    return _then(_FirebaseImage(
      imageType: imageType == freezed
          ? _value.imageType
          : imageType // ignore: cast_nullable_to_non_nullable
              as FirebaseImageType,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FirebaseImage with DiagnosticableTreeMixin implements _FirebaseImage {
  _$_FirebaseImage(
      {@JsonKey(name: 'image_type') this.imageType = FirebaseImageType.url,
      @JsonKey(name: 'path') this.path = ""});

  factory _$_FirebaseImage.fromJson(Map<String, dynamic> json) =>
      _$_$_FirebaseImageFromJson(json);

  @override
  @JsonKey(name: 'image_type')
  final FirebaseImageType imageType;
  @override
  @JsonKey(name: 'path')
  final String path;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FirebaseImage(imageType: $imageType, path: $path)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FirebaseImage'))
      ..add(DiagnosticsProperty('imageType', imageType))
      ..add(DiagnosticsProperty('path', path));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FirebaseImage &&
            (identical(other.imageType, imageType) ||
                const DeepCollectionEquality()
                    .equals(other.imageType, imageType)) &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(imageType) ^
      const DeepCollectionEquality().hash(path);

  @JsonKey(ignore: true)
  @override
  _$FirebaseImageCopyWith<_FirebaseImage> get copyWith =>
      __$FirebaseImageCopyWithImpl<_FirebaseImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FirebaseImageToJson(this);
  }
}

abstract class _FirebaseImage implements FirebaseImage {
  factory _FirebaseImage(
      {@JsonKey(name: 'image_type') FirebaseImageType imageType,
      @JsonKey(name: 'path') String path}) = _$_FirebaseImage;

  factory _FirebaseImage.fromJson(Map<String, dynamic> json) =
      _$_FirebaseImage.fromJson;

  @override
  @JsonKey(name: 'image_type')
  FirebaseImageType get imageType => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'path')
  String get path => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FirebaseImageCopyWith<_FirebaseImage> get copyWith =>
      throw _privateConstructorUsedError;
}
