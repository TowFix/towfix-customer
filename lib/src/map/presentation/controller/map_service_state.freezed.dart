// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_service_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MapServiceState _$MapServiceStateFromJson(Map<String, dynamic> json) {
  return _MapServiceState.fromJson(json);
}

/// @nodoc
mixin _$MapServiceState {
  Address? get pickUpLocation => throw _privateConstructorUsedError;
  Address? get dropOffLocation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MapServiceStateCopyWith<MapServiceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapServiceStateCopyWith<$Res> {
  factory $MapServiceStateCopyWith(
          MapServiceState value, $Res Function(MapServiceState) then) =
      _$MapServiceStateCopyWithImpl<$Res, MapServiceState>;
  @useResult
  $Res call({Address? pickUpLocation, Address? dropOffLocation});

  $AddressCopyWith<$Res>? get pickUpLocation;
  $AddressCopyWith<$Res>? get dropOffLocation;
}

/// @nodoc
class _$MapServiceStateCopyWithImpl<$Res, $Val extends MapServiceState>
    implements $MapServiceStateCopyWith<$Res> {
  _$MapServiceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pickUpLocation = freezed,
    Object? dropOffLocation = freezed,
  }) {
    return _then(_value.copyWith(
      pickUpLocation: freezed == pickUpLocation
          ? _value.pickUpLocation
          : pickUpLocation // ignore: cast_nullable_to_non_nullable
              as Address?,
      dropOffLocation: freezed == dropOffLocation
          ? _value.dropOffLocation
          : dropOffLocation // ignore: cast_nullable_to_non_nullable
              as Address?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get pickUpLocation {
    if (_value.pickUpLocation == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_value.pickUpLocation!, (value) {
      return _then(_value.copyWith(pickUpLocation: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get dropOffLocation {
    if (_value.dropOffLocation == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_value.dropOffLocation!, (value) {
      return _then(_value.copyWith(dropOffLocation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MapServiceStateCopyWith<$Res>
    implements $MapServiceStateCopyWith<$Res> {
  factory _$$_MapServiceStateCopyWith(
          _$_MapServiceState value, $Res Function(_$_MapServiceState) then) =
      __$$_MapServiceStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Address? pickUpLocation, Address? dropOffLocation});

  @override
  $AddressCopyWith<$Res>? get pickUpLocation;
  @override
  $AddressCopyWith<$Res>? get dropOffLocation;
}

/// @nodoc
class __$$_MapServiceStateCopyWithImpl<$Res>
    extends _$MapServiceStateCopyWithImpl<$Res, _$_MapServiceState>
    implements _$$_MapServiceStateCopyWith<$Res> {
  __$$_MapServiceStateCopyWithImpl(
      _$_MapServiceState _value, $Res Function(_$_MapServiceState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pickUpLocation = freezed,
    Object? dropOffLocation = freezed,
  }) {
    return _then(_$_MapServiceState(
      pickUpLocation: freezed == pickUpLocation
          ? _value.pickUpLocation
          : pickUpLocation // ignore: cast_nullable_to_non_nullable
              as Address?,
      dropOffLocation: freezed == dropOffLocation
          ? _value.dropOffLocation
          : dropOffLocation // ignore: cast_nullable_to_non_nullable
              as Address?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MapServiceState implements _MapServiceState {
  _$_MapServiceState(
      {required this.pickUpLocation, required this.dropOffLocation});

  factory _$_MapServiceState.fromJson(Map<String, dynamic> json) =>
      _$$_MapServiceStateFromJson(json);

  @override
  final Address? pickUpLocation;
  @override
  final Address? dropOffLocation;

  @override
  String toString() {
    return 'MapServiceState(pickUpLocation: $pickUpLocation, dropOffLocation: $dropOffLocation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MapServiceState &&
            (identical(other.pickUpLocation, pickUpLocation) ||
                other.pickUpLocation == pickUpLocation) &&
            (identical(other.dropOffLocation, dropOffLocation) ||
                other.dropOffLocation == dropOffLocation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, pickUpLocation, dropOffLocation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MapServiceStateCopyWith<_$_MapServiceState> get copyWith =>
      __$$_MapServiceStateCopyWithImpl<_$_MapServiceState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MapServiceStateToJson(
      this,
    );
  }
}

abstract class _MapServiceState implements MapServiceState {
  factory _MapServiceState(
      {required final Address? pickUpLocation,
      required final Address? dropOffLocation}) = _$_MapServiceState;

  factory _MapServiceState.fromJson(Map<String, dynamic> json) =
      _$_MapServiceState.fromJson;

  @override
  Address? get pickUpLocation;
  @override
  Address? get dropOffLocation;
  @override
  @JsonKey(ignore: true)
  _$$_MapServiceStateCopyWith<_$_MapServiceState> get copyWith =>
      throw _privateConstructorUsedError;
}
