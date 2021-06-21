// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'travel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Travel _$TravelFromJson(Map<String, dynamic> json) {
  return _Travel.fromJson(json);
}

/// @nodoc
class _$TravelTearOff {
  const _$TravelTearOff();

  _Travel call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'rating') int? rating,
      @JsonKey(name: 'images') List<FirebaseImage>? images,
      @JsonKey(name: 'goodies') List<Goodies>? goodies,
      @JsonKey(name: 'is_public') bool? isPublic,
      @JsonKey(name: 'locations') List<Locations>? locations,
      @JsonKey(name: 'transport_wastes') List<TransportWastes>? transportWastes,
      @JsonKey(name: 'travellers') List<Travellers>? travellers,
      @JsonKey(name: 'date') String? date,
      @JsonKey(name: 'description') String? description}) {
    return _Travel(
      id: id,
      name: name,
      rating: rating,
      images: images,
      goodies: goodies,
      isPublic: isPublic,
      locations: locations,
      transportWastes: transportWastes,
      travellers: travellers,
      date: date,
      description: description,
    );
  }

  Travel fromJson(Map<String, Object> json) {
    return Travel.fromJson(json);
  }
}

/// @nodoc
const $Travel = _$TravelTearOff();

/// @nodoc
mixin _$Travel {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating')
  int? get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'images')
  List<FirebaseImage>? get images => throw _privateConstructorUsedError;
  @JsonKey(name: 'goodies')
  List<Goodies>? get goodies => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_public')
  bool? get isPublic => throw _privateConstructorUsedError;
  @JsonKey(name: 'locations')
  List<Locations>? get locations => throw _privateConstructorUsedError;
  @JsonKey(name: 'transport_wastes')
  List<TransportWastes>? get transportWastes =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'travellers')
  List<Travellers>? get travellers => throw _privateConstructorUsedError;
  @JsonKey(name: 'date')
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TravelCopyWith<Travel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelCopyWith<$Res> {
  factory $TravelCopyWith(Travel value, $Res Function(Travel) then) =
      _$TravelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'rating') int? rating,
      @JsonKey(name: 'images') List<FirebaseImage>? images,
      @JsonKey(name: 'goodies') List<Goodies>? goodies,
      @JsonKey(name: 'is_public') bool? isPublic,
      @JsonKey(name: 'locations') List<Locations>? locations,
      @JsonKey(name: 'transport_wastes') List<TransportWastes>? transportWastes,
      @JsonKey(name: 'travellers') List<Travellers>? travellers,
      @JsonKey(name: 'date') String? date,
      @JsonKey(name: 'description') String? description});
}

/// @nodoc
class _$TravelCopyWithImpl<$Res> implements $TravelCopyWith<$Res> {
  _$TravelCopyWithImpl(this._value, this._then);

  final Travel _value;
  // ignore: unused_field
  final $Res Function(Travel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? rating = freezed,
    Object? images = freezed,
    Object? goodies = freezed,
    Object? isPublic = freezed,
    Object? locations = freezed,
    Object? transportWastes = freezed,
    Object? travellers = freezed,
    Object? date = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<FirebaseImage>?,
      goodies: goodies == freezed
          ? _value.goodies
          : goodies // ignore: cast_nullable_to_non_nullable
              as List<Goodies>?,
      isPublic: isPublic == freezed
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool?,
      locations: locations == freezed
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<Locations>?,
      transportWastes: transportWastes == freezed
          ? _value.transportWastes
          : transportWastes // ignore: cast_nullable_to_non_nullable
              as List<TransportWastes>?,
      travellers: travellers == freezed
          ? _value.travellers
          : travellers // ignore: cast_nullable_to_non_nullable
              as List<Travellers>?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$TravelCopyWith<$Res> implements $TravelCopyWith<$Res> {
  factory _$TravelCopyWith(_Travel value, $Res Function(_Travel) then) =
      __$TravelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'rating') int? rating,
      @JsonKey(name: 'images') List<FirebaseImage>? images,
      @JsonKey(name: 'goodies') List<Goodies>? goodies,
      @JsonKey(name: 'is_public') bool? isPublic,
      @JsonKey(name: 'locations') List<Locations>? locations,
      @JsonKey(name: 'transport_wastes') List<TransportWastes>? transportWastes,
      @JsonKey(name: 'travellers') List<Travellers>? travellers,
      @JsonKey(name: 'date') String? date,
      @JsonKey(name: 'description') String? description});
}

/// @nodoc
class __$TravelCopyWithImpl<$Res> extends _$TravelCopyWithImpl<$Res>
    implements _$TravelCopyWith<$Res> {
  __$TravelCopyWithImpl(_Travel _value, $Res Function(_Travel) _then)
      : super(_value, (v) => _then(v as _Travel));

  @override
  _Travel get _value => super._value as _Travel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? rating = freezed,
    Object? images = freezed,
    Object? goodies = freezed,
    Object? isPublic = freezed,
    Object? locations = freezed,
    Object? transportWastes = freezed,
    Object? travellers = freezed,
    Object? date = freezed,
    Object? description = freezed,
  }) {
    return _then(_Travel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<FirebaseImage>?,
      goodies: goodies == freezed
          ? _value.goodies
          : goodies // ignore: cast_nullable_to_non_nullable
              as List<Goodies>?,
      isPublic: isPublic == freezed
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool?,
      locations: locations == freezed
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<Locations>?,
      transportWastes: transportWastes == freezed
          ? _value.transportWastes
          : transportWastes // ignore: cast_nullable_to_non_nullable
              as List<TransportWastes>?,
      travellers: travellers == freezed
          ? _value.travellers
          : travellers // ignore: cast_nullable_to_non_nullable
              as List<Travellers>?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Travel with DiagnosticableTreeMixin implements _Travel {
  _$_Travel(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'rating') this.rating,
      @JsonKey(name: 'images') this.images,
      @JsonKey(name: 'goodies') this.goodies,
      @JsonKey(name: 'is_public') this.isPublic,
      @JsonKey(name: 'locations') this.locations,
      @JsonKey(name: 'transport_wastes') this.transportWastes,
      @JsonKey(name: 'travellers') this.travellers,
      @JsonKey(name: 'date') this.date,
      @JsonKey(name: 'description') this.description});

  factory _$_Travel.fromJson(Map<String, dynamic> json) =>
      _$_$_TravelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'rating')
  final int? rating;
  @override
  @JsonKey(name: 'images')
  final List<FirebaseImage>? images;
  @override
  @JsonKey(name: 'goodies')
  final List<Goodies>? goodies;
  @override
  @JsonKey(name: 'is_public')
  final bool? isPublic;
  @override
  @JsonKey(name: 'locations')
  final List<Locations>? locations;
  @override
  @JsonKey(name: 'transport_wastes')
  final List<TransportWastes>? transportWastes;
  @override
  @JsonKey(name: 'travellers')
  final List<Travellers>? travellers;
  @override
  @JsonKey(name: 'date')
  final String? date;
  @override
  @JsonKey(name: 'description')
  final String? description;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Travel(id: $id, name: $name, rating: $rating, images: $images, goodies: $goodies, isPublic: $isPublic, locations: $locations, transportWastes: $transportWastes, travellers: $travellers, date: $date, description: $description)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Travel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('rating', rating))
      ..add(DiagnosticsProperty('images', images))
      ..add(DiagnosticsProperty('goodies', goodies))
      ..add(DiagnosticsProperty('isPublic', isPublic))
      ..add(DiagnosticsProperty('locations', locations))
      ..add(DiagnosticsProperty('transportWastes', transportWastes))
      ..add(DiagnosticsProperty('travellers', travellers))
      ..add(DiagnosticsProperty('date', date))
      ..add(DiagnosticsProperty('description', description));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Travel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.rating, rating) ||
                const DeepCollectionEquality().equals(other.rating, rating)) &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)) &&
            (identical(other.goodies, goodies) ||
                const DeepCollectionEquality()
                    .equals(other.goodies, goodies)) &&
            (identical(other.isPublic, isPublic) ||
                const DeepCollectionEquality()
                    .equals(other.isPublic, isPublic)) &&
            (identical(other.locations, locations) ||
                const DeepCollectionEquality()
                    .equals(other.locations, locations)) &&
            (identical(other.transportWastes, transportWastes) ||
                const DeepCollectionEquality()
                    .equals(other.transportWastes, transportWastes)) &&
            (identical(other.travellers, travellers) ||
                const DeepCollectionEquality()
                    .equals(other.travellers, travellers)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(rating) ^
      const DeepCollectionEquality().hash(images) ^
      const DeepCollectionEquality().hash(goodies) ^
      const DeepCollectionEquality().hash(isPublic) ^
      const DeepCollectionEquality().hash(locations) ^
      const DeepCollectionEquality().hash(transportWastes) ^
      const DeepCollectionEquality().hash(travellers) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(description);

  @JsonKey(ignore: true)
  @override
  _$TravelCopyWith<_Travel> get copyWith =>
      __$TravelCopyWithImpl<_Travel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TravelToJson(this);
  }
}

abstract class _Travel implements Travel {
  factory _Travel(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'rating') int? rating,
      @JsonKey(name: 'images') List<FirebaseImage>? images,
      @JsonKey(name: 'goodies') List<Goodies>? goodies,
      @JsonKey(name: 'is_public') bool? isPublic,
      @JsonKey(name: 'locations') List<Locations>? locations,
      @JsonKey(name: 'transport_wastes') List<TransportWastes>? transportWastes,
      @JsonKey(name: 'travellers') List<Travellers>? travellers,
      @JsonKey(name: 'date') String? date,
      @JsonKey(name: 'description') String? description}) = _$_Travel;

  factory _Travel.fromJson(Map<String, dynamic> json) = _$_Travel.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'rating')
  int? get rating => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'images')
  List<FirebaseImage>? get images => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'goodies')
  List<Goodies>? get goodies => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'is_public')
  bool? get isPublic => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'locations')
  List<Locations>? get locations => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'transport_wastes')
  List<TransportWastes>? get transportWastes =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'travellers')
  List<Travellers>? get travellers => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'date')
  String? get date => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TravelCopyWith<_Travel> get copyWith => throw _privateConstructorUsedError;
}
