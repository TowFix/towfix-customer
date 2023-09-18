// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'start_location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StartLocation _$StartLocationFromJson(Map<String, dynamic> json) {
  return _StartLocation.fromJson(json);
}

/// @nodoc
mixin _$StartLocation {
  double? get lat => throw _privateConstructorUsedError;
  double? get lng => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StartLocationCopyWith<StartLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StartLocationCopyWith<$Res> {
  factory $StartLocationCopyWith(
          StartLocation value, $Res Function(StartLocation) then) =
      _$StartLocationCopyWithImpl<$Res, StartLocation>;
  @useResult
  $Res call({double? lat, double? lng});
}

/// @nodoc
class _$StartLocationCopyWithImpl<$Res, $Val extends StartLocation>
    implements $StartLocationCopyWith<$Res> {
  _$StartLocationCopyWithImpl(this._value, this._then);

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
abstract class _$$_StartLocationCopyWith<$Res>
    implements $StartLocationCopyWith<$Res> {
  factory _$$_StartLocationCopyWith(
          _$_StartLocation value, $Res Function(_$_StartLocation) then) =
      __$$_StartLocationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? lat, double? lng});
}

/// @nodoc
class __$$_StartLocationCopyWithImpl<$Res>
    extends _$StartLocationCopyWithImpl<$Res, _$_StartLocation>
    implements _$$_StartLocationCopyWith<$Res> {
  __$$_StartLocationCopyWithImpl(
      _$_StartLocation _value, $Res Function(_$_StartLocation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = freezed,
    Object? lng = freezed,
  }) {
    return _then(_$_StartLocation(
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
class _$_StartLocation implements _StartLocation {
  _$_StartLocation({this.lat, this.lng});

  factory _$_StartLocation.fromJson(Map<String, dynamic> json) =>
      _$$_StartLocationFromJson(json);

  @override
  final double? lat;
  @override
  final double? lng;

  @override
  String toString() {
    return 'StartLocation(lat: $lat, lng: $lng)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StartLocation &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lat, lng);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartLocationCopyWith<_$_StartLocation> get copyWith =>
      __$$_StartLocationCopyWithImpl<_$_StartLocation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StartLocationToJson(
      this,
    );
  }
}

abstract class _StartLocation implements StartLocation {
  factory _StartLocation({final double? lat, final double? lng}) =
      _$_StartLocation;

  factory _StartLocation.fromJson(Map<String, dynamic> json) =
      _$_StartLocation.fromJson;

  @override
  double? get lat;
  @override
  double? get lng;
  @override
  @JsonKey(ignore: true)
  _$$_StartLocationCopyWith<_$_StartLocation> get copyWith =>
      throw _privateConstructorUsedError;
}
