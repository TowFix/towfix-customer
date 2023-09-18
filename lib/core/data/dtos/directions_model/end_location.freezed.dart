// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'end_location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EndLocation _$EndLocationFromJson(Map<String, dynamic> json) {
  return _EndLocation.fromJson(json);
}

/// @nodoc
mixin _$EndLocation {
  double? get lat => throw _privateConstructorUsedError;
  double? get lng => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EndLocationCopyWith<EndLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EndLocationCopyWith<$Res> {
  factory $EndLocationCopyWith(
          EndLocation value, $Res Function(EndLocation) then) =
      _$EndLocationCopyWithImpl<$Res, EndLocation>;
  @useResult
  $Res call({double? lat, double? lng});
}

/// @nodoc
class _$EndLocationCopyWithImpl<$Res, $Val extends EndLocation>
    implements $EndLocationCopyWith<$Res> {
  _$EndLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = freezed,
    Object? lng = freezed,
  }) {
    return _then(_value.copyWith(
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lng: freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EndLocationCopyWith<$Res>
    implements $EndLocationCopyWith<$Res> {
  factory _$$_EndLocationCopyWith(
          _$_EndLocation value, $Res Function(_$_EndLocation) then) =
      __$$_EndLocationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? lat, double? lng});
}

/// @nodoc
class __$$_EndLocationCopyWithImpl<$Res>
    extends _$EndLocationCopyWithImpl<$Res, _$_EndLocation>
    implements _$$_EndLocationCopyWith<$Res> {
  __$$_EndLocationCopyWithImpl(
      _$_EndLocation _value, $Res Function(_$_EndLocation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = freezed,
    Object? lng = freezed,
  }) {
    return _then(_$_EndLocation(
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lng: freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EndLocation implements _EndLocation {
  _$_EndLocation({this.lat, this.lng});

  factory _$_EndLocation.fromJson(Map<String, dynamic> json) =>
      _$$_EndLocationFromJson(json);

  @override
  final double? lat;
  @override
  final double? lng;

  @override
  String toString() {
    return 'EndLocation(lat: $lat, lng: $lng)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EndLocation &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lat, lng);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EndLocationCopyWith<_$_EndLocation> get copyWith =>
      __$$_EndLocationCopyWithImpl<_$_EndLocation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EndLocationToJson(
      this,
    );
  }
}

abstract class _EndLocation implements EndLocation {
  factory _EndLocation({final double? lat, final double? lng}) = _$_EndLocation;

  factory _EndLocation.fromJson(Map<String, dynamic> json) =
      _$_EndLocation.fromJson;

  @override
  double? get lat;
  @override
  double? get lng;
  @override
  @JsonKey(ignore: true)
  _$$_EndLocationCopyWith<_$_EndLocation> get copyWith =>
      throw _privateConstructorUsedError;
}
