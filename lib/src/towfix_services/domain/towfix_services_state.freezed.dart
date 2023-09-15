// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'towfix_services_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TowfixServiceState _$TowfixServiceStateFromJson(Map<String, dynamic> json) {
  return _TowfixServiceState.fromJson(json);
}

/// @nodoc
mixin _$TowfixServiceState {
  TowfixServicesEnum get service => throw _privateConstructorUsedError;
  Directions get pickUploation => throw _privateConstructorUsedError;
  Directions get dropOffLocation => throw _privateConstructorUsedError;
  Directions get directions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TowfixServiceStateCopyWith<TowfixServiceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TowfixServiceStateCopyWith<$Res> {
  factory $TowfixServiceStateCopyWith(
          TowfixServiceState value, $Res Function(TowfixServiceState) then) =
      _$TowfixServiceStateCopyWithImpl<$Res, TowfixServiceState>;
  @useResult
  $Res call(
      {TowfixServicesEnum service,
      Directions pickUploation,
      Directions dropOffLocation,
      Directions directions});

  $DirectionsCopyWith<$Res> get pickUploation;
  $DirectionsCopyWith<$Res> get dropOffLocation;
  $DirectionsCopyWith<$Res> get directions;
}

/// @nodoc
class _$TowfixServiceStateCopyWithImpl<$Res, $Val extends TowfixServiceState>
    implements $TowfixServiceStateCopyWith<$Res> {
  _$TowfixServiceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? service = null,
    Object? pickUploation = null,
    Object? dropOffLocation = null,
    Object? directions = null,
  }) {
    return _then(_value.copyWith(
      service: null == service
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as TowfixServicesEnum,
      pickUploation: null == pickUploation
          ? _value.pickUploation
          : pickUploation // ignore: cast_nullable_to_non_nullable
              as Directions,
      dropOffLocation: null == dropOffLocation
          ? _value.dropOffLocation
          : dropOffLocation // ignore: cast_nullable_to_non_nullable
              as Directions,
      directions: null == directions
          ? _value.directions
          : directions // ignore: cast_nullable_to_non_nullable
              as Directions,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DirectionsCopyWith<$Res> get pickUploation {
    return $DirectionsCopyWith<$Res>(_value.pickUploation, (value) {
      return _then(_value.copyWith(pickUploation: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DirectionsCopyWith<$Res> get dropOffLocation {
    return $DirectionsCopyWith<$Res>(_value.dropOffLocation, (value) {
      return _then(_value.copyWith(dropOffLocation: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DirectionsCopyWith<$Res> get directions {
    return $DirectionsCopyWith<$Res>(_value.directions, (value) {
      return _then(_value.copyWith(directions: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TowfixServiceStateCopyWith<$Res>
    implements $TowfixServiceStateCopyWith<$Res> {
  factory _$$_TowfixServiceStateCopyWith(_$_TowfixServiceState value,
          $Res Function(_$_TowfixServiceState) then) =
      __$$_TowfixServiceStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TowfixServicesEnum service,
      Directions pickUploation,
      Directions dropOffLocation,
      Directions directions});

  @override
  $DirectionsCopyWith<$Res> get pickUploation;
  @override
  $DirectionsCopyWith<$Res> get dropOffLocation;
  @override
  $DirectionsCopyWith<$Res> get directions;
}

/// @nodoc
class __$$_TowfixServiceStateCopyWithImpl<$Res>
    extends _$TowfixServiceStateCopyWithImpl<$Res, _$_TowfixServiceState>
    implements _$$_TowfixServiceStateCopyWith<$Res> {
  __$$_TowfixServiceStateCopyWithImpl(
      _$_TowfixServiceState _value, $Res Function(_$_TowfixServiceState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? service = null,
    Object? pickUploation = null,
    Object? dropOffLocation = null,
    Object? directions = null,
  }) {
    return _then(_$_TowfixServiceState(
      service: null == service
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as TowfixServicesEnum,
      pickUploation: null == pickUploation
          ? _value.pickUploation
          : pickUploation // ignore: cast_nullable_to_non_nullable
              as Directions,
      dropOffLocation: null == dropOffLocation
          ? _value.dropOffLocation
          : dropOffLocation // ignore: cast_nullable_to_non_nullable
              as Directions,
      directions: null == directions
          ? _value.directions
          : directions // ignore: cast_nullable_to_non_nullable
              as Directions,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TowfixServiceState implements _TowfixServiceState {
  const _$_TowfixServiceState(
      {required this.service,
      required this.pickUploation,
      required this.dropOffLocation,
      required this.directions});

  factory _$_TowfixServiceState.fromJson(Map<String, dynamic> json) =>
      _$$_TowfixServiceStateFromJson(json);

  @override
  final TowfixServicesEnum service;
  @override
  final Directions pickUploation;
  @override
  final Directions dropOffLocation;
  @override
  final Directions directions;

  @override
  String toString() {
    return 'TowfixServiceState(service: $service, pickUploation: $pickUploation, dropOffLocation: $dropOffLocation, directions: $directions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TowfixServiceState &&
            (identical(other.service, service) || other.service == service) &&
            (identical(other.pickUploation, pickUploation) ||
                other.pickUploation == pickUploation) &&
            (identical(other.dropOffLocation, dropOffLocation) ||
                other.dropOffLocation == dropOffLocation) &&
            (identical(other.directions, directions) ||
                other.directions == directions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, service, pickUploation, dropOffLocation, directions);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TowfixServiceStateCopyWith<_$_TowfixServiceState> get copyWith =>
      __$$_TowfixServiceStateCopyWithImpl<_$_TowfixServiceState>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TowfixServiceStateToJson(
      this,
    );
  }
}

abstract class _TowfixServiceState implements TowfixServiceState {
  const factory _TowfixServiceState(
      {required final TowfixServicesEnum service,
      required final Directions pickUploation,
      required final Directions dropOffLocation,
      required final Directions directions}) = _$_TowfixServiceState;

  factory _TowfixServiceState.fromJson(Map<String, dynamic> json) =
      _$_TowfixServiceState.fromJson;

  @override
  TowfixServicesEnum get service;
  @override
  Directions get pickUploation;
  @override
  Directions get dropOffLocation;
  @override
  Directions get directions;
  @override
  @JsonKey(ignore: true)
  _$$_TowfixServiceStateCopyWith<_$_TowfixServiceState> get copyWith =>
      throw _privateConstructorUsedError;
}
