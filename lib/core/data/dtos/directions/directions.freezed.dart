// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'directions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Directions _$DirectionsFromJson(Map<String, dynamic> json) {
  return _Directions.fromJson(json);
}

/// @nodoc
mixin _$Directions {
  String? get humanReadableAddress => throw _privateConstructorUsedError;
  String? get locationName => throw _privateConstructorUsedError;
  String? get locationId => throw _privateConstructorUsedError;
  double? get locationLatitude => throw _privateConstructorUsedError;
  double? get locationLongitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DirectionsCopyWith<Directions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DirectionsCopyWith<$Res> {
  factory $DirectionsCopyWith(
          Directions value, $Res Function(Directions) then) =
      _$DirectionsCopyWithImpl<$Res, Directions>;
  @useResult
  $Res call(
      {String? humanReadableAddress,
      String? locationName,
      String? locationId,
      double? locationLatitude,
      double? locationLongitude});
}

/// @nodoc
class _$DirectionsCopyWithImpl<$Res, $Val extends Directions>
    implements $DirectionsCopyWith<$Res> {
  _$DirectionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? humanReadableAddress = freezed,
    Object? locationName = freezed,
    Object? locationId = freezed,
    Object? locationLatitude = freezed,
    Object? locationLongitude = freezed,
  }) {
    return _then(_value.copyWith(
      humanReadableAddress: freezed == humanReadableAddress
          ? _value.humanReadableAddress
          : humanReadableAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      locationName: freezed == locationName
          ? _value.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String?,
      locationId: freezed == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String?,
      locationLatitude: freezed == locationLatitude
          ? _value.locationLatitude
          : locationLatitude // ignore: cast_nullable_to_non_nullable
              as double?,
      locationLongitude: freezed == locationLongitude
          ? _value.locationLongitude
          : locationLongitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DirectionsCopyWith<$Res>
    implements $DirectionsCopyWith<$Res> {
  factory _$$_DirectionsCopyWith(
          _$_Directions value, $Res Function(_$_Directions) then) =
      __$$_DirectionsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? humanReadableAddress,
      String? locationName,
      String? locationId,
      double? locationLatitude,
      double? locationLongitude});
}

/// @nodoc
class __$$_DirectionsCopyWithImpl<$Res>
    extends _$DirectionsCopyWithImpl<$Res, _$_Directions>
    implements _$$_DirectionsCopyWith<$Res> {
  __$$_DirectionsCopyWithImpl(
      _$_Directions _value, $Res Function(_$_Directions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? humanReadableAddress = freezed,
    Object? locationName = freezed,
    Object? locationId = freezed,
    Object? locationLatitude = freezed,
    Object? locationLongitude = freezed,
  }) {
    return _then(_$_Directions(
      humanReadableAddress: freezed == humanReadableAddress
          ? _value.humanReadableAddress
          : humanReadableAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      locationName: freezed == locationName
          ? _value.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String?,
      locationId: freezed == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String?,
      locationLatitude: freezed == locationLatitude
          ? _value.locationLatitude
          : locationLatitude // ignore: cast_nullable_to_non_nullable
              as double?,
      locationLongitude: freezed == locationLongitude
          ? _value.locationLongitude
          : locationLongitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Directions implements _Directions {
  const _$_Directions(
      {this.humanReadableAddress,
      this.locationName,
      this.locationId,
      this.locationLatitude,
      this.locationLongitude});

  factory _$_Directions.fromJson(Map<String, dynamic> json) =>
      _$$_DirectionsFromJson(json);

  @override
  final String? humanReadableAddress;
  @override
  final String? locationName;
  @override
  final String? locationId;
  @override
  final double? locationLatitude;
  @override
  final double? locationLongitude;

  @override
  String toString() {
    return 'Directions(humanReadableAddress: $humanReadableAddress, locationName: $locationName, locationId: $locationId, locationLatitude: $locationLatitude, locationLongitude: $locationLongitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Directions &&
            (identical(other.humanReadableAddress, humanReadableAddress) ||
                other.humanReadableAddress == humanReadableAddress) &&
            (identical(other.locationName, locationName) ||
                other.locationName == locationName) &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            (identical(other.locationLatitude, locationLatitude) ||
                other.locationLatitude == locationLatitude) &&
            (identical(other.locationLongitude, locationLongitude) ||
                other.locationLongitude == locationLongitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, humanReadableAddress,
      locationName, locationId, locationLatitude, locationLongitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DirectionsCopyWith<_$_Directions> get copyWith =>
      __$$_DirectionsCopyWithImpl<_$_Directions>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DirectionsToJson(
      this,
    );
  }
}

abstract class _Directions implements Directions {
  const factory _Directions(
      {final String? humanReadableAddress,
      final String? locationName,
      final String? locationId,
      final double? locationLatitude,
      final double? locationLongitude}) = _$_Directions;

  factory _Directions.fromJson(Map<String, dynamic> json) =
      _$_Directions.fromJson;

  @override
  String? get humanReadableAddress;
  @override
  String? get locationName;
  @override
  String? get locationId;
  @override
  double? get locationLatitude;
  @override
  double? get locationLongitude;
  @override
  @JsonKey(ignore: true)
  _$$_DirectionsCopyWith<_$_Directions> get copyWith =>
      throw _privateConstructorUsedError;
}
