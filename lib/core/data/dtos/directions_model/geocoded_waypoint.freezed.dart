// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'geocoded_waypoint.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GeocodedWaypoint _$GeocodedWaypointFromJson(Map<String, dynamic> json) {
  return _GeocodedWaypoint.fromJson(json);
}

/// @nodoc
mixin _$GeocodedWaypoint {
  @JsonKey(name: 'geocoder_status')
  String? get geocoderStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'place_id')
  String? get placeId => throw _privateConstructorUsedError;
  List<String>? get types => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeocodedWaypointCopyWith<GeocodedWaypoint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeocodedWaypointCopyWith<$Res> {
  factory $GeocodedWaypointCopyWith(
          GeocodedWaypoint value, $Res Function(GeocodedWaypoint) then) =
      _$GeocodedWaypointCopyWithImpl<$Res, GeocodedWaypoint>;
  @useResult
  $Res call(
      {@JsonKey(name: 'geocoder_status') String? geocoderStatus,
      @JsonKey(name: 'place_id') String? placeId,
      List<String>? types});
}

/// @nodoc
class _$GeocodedWaypointCopyWithImpl<$Res, $Val extends GeocodedWaypoint>
    implements $GeocodedWaypointCopyWith<$Res> {
  _$GeocodedWaypointCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? geocoderStatus = freezed,
    Object? placeId = freezed,
    Object? types = freezed,
  }) {
    return _then(_value.copyWith(
      geocoderStatus: freezed == geocoderStatus
          ? _value.geocoderStatus
          : geocoderStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      placeId: freezed == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String?,
      types: freezed == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GeocodedWaypointCopyWith<$Res>
    implements $GeocodedWaypointCopyWith<$Res> {
  factory _$$_GeocodedWaypointCopyWith(
          _$_GeocodedWaypoint value, $Res Function(_$_GeocodedWaypoint) then) =
      __$$_GeocodedWaypointCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'geocoder_status') String? geocoderStatus,
      @JsonKey(name: 'place_id') String? placeId,
      List<String>? types});
}

/// @nodoc
class __$$_GeocodedWaypointCopyWithImpl<$Res>
    extends _$GeocodedWaypointCopyWithImpl<$Res, _$_GeocodedWaypoint>
    implements _$$_GeocodedWaypointCopyWith<$Res> {
  __$$_GeocodedWaypointCopyWithImpl(
      _$_GeocodedWaypoint _value, $Res Function(_$_GeocodedWaypoint) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? geocoderStatus = freezed,
    Object? placeId = freezed,
    Object? types = freezed,
  }) {
    return _then(_$_GeocodedWaypoint(
      geocoderStatus: freezed == geocoderStatus
          ? _value.geocoderStatus
          : geocoderStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      placeId: freezed == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String?,
      types: freezed == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GeocodedWaypoint implements _GeocodedWaypoint {
  _$_GeocodedWaypoint(
      {@JsonKey(name: 'geocoder_status') this.geocoderStatus,
      @JsonKey(name: 'place_id') this.placeId,
      final List<String>? types})
      : _types = types;

  factory _$_GeocodedWaypoint.fromJson(Map<String, dynamic> json) =>
      _$$_GeocodedWaypointFromJson(json);

  @override
  @JsonKey(name: 'geocoder_status')
  final String? geocoderStatus;
  @override
  @JsonKey(name: 'place_id')
  final String? placeId;
  final List<String>? _types;
  @override
  List<String>? get types {
    final value = _types;
    if (value == null) return null;
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GeocodedWaypoint(geocoderStatus: $geocoderStatus, placeId: $placeId, types: $types)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GeocodedWaypoint &&
            (identical(other.geocoderStatus, geocoderStatus) ||
                other.geocoderStatus == geocoderStatus) &&
            (identical(other.placeId, placeId) || other.placeId == placeId) &&
            const DeepCollectionEquality().equals(other._types, _types));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, geocoderStatus, placeId,
      const DeepCollectionEquality().hash(_types));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GeocodedWaypointCopyWith<_$_GeocodedWaypoint> get copyWith =>
      __$$_GeocodedWaypointCopyWithImpl<_$_GeocodedWaypoint>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GeocodedWaypointToJson(
      this,
    );
  }
}

abstract class _GeocodedWaypoint implements GeocodedWaypoint {
  factory _GeocodedWaypoint(
      {@JsonKey(name: 'geocoder_status') final String? geocoderStatus,
      @JsonKey(name: 'place_id') final String? placeId,
      final List<String>? types}) = _$_GeocodedWaypoint;

  factory _GeocodedWaypoint.fromJson(Map<String, dynamic> json) =
      _$_GeocodedWaypoint.fromJson;

  @override
  @JsonKey(name: 'geocoder_status')
  String? get geocoderStatus;
  @override
  @JsonKey(name: 'place_id')
  String? get placeId;
  @override
  List<String>? get types;
  @override
  @JsonKey(ignore: true)
  _$$_GeocodedWaypointCopyWith<_$_GeocodedWaypoint> get copyWith =>
      throw _privateConstructorUsedError;
}
