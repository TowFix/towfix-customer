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
  Vehicle? get vehicle => throw _privateConstructorUsedError;
  String get currentEventId => throw _privateConstructorUsedError;
  ServiceType get serviceType => throw _privateConstructorUsedError;
  ServiceRequest get serviceRequest => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;

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
  $Res call(
      {Address? pickUpLocation,
      Address? dropOffLocation,
      Vehicle? vehicle,
      String currentEventId,
      ServiceType serviceType,
      ServiceRequest serviceRequest,
      bool loading});

  $AddressCopyWith<$Res>? get pickUpLocation;
  $AddressCopyWith<$Res>? get dropOffLocation;
  $VehicleCopyWith<$Res>? get vehicle;
  $ServiceRequestCopyWith<$Res> get serviceRequest;
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
    Object? vehicle = freezed,
    Object? currentEventId = null,
    Object? serviceType = null,
    Object? serviceRequest = null,
    Object? loading = null,
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
      vehicle: freezed == vehicle
          ? _value.vehicle
          : vehicle // ignore: cast_nullable_to_non_nullable
              as Vehicle?,
      currentEventId: null == currentEventId
          ? _value.currentEventId
          : currentEventId // ignore: cast_nullable_to_non_nullable
              as String,
      serviceType: null == serviceType
          ? _value.serviceType
          : serviceType // ignore: cast_nullable_to_non_nullable
              as ServiceType,
      serviceRequest: null == serviceRequest
          ? _value.serviceRequest
          : serviceRequest // ignore: cast_nullable_to_non_nullable
              as ServiceRequest,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
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

  @override
  @pragma('vm:prefer-inline')
  $VehicleCopyWith<$Res>? get vehicle {
    if (_value.vehicle == null) {
      return null;
    }

    return $VehicleCopyWith<$Res>(_value.vehicle!, (value) {
      return _then(_value.copyWith(vehicle: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ServiceRequestCopyWith<$Res> get serviceRequest {
    return $ServiceRequestCopyWith<$Res>(_value.serviceRequest, (value) {
      return _then(_value.copyWith(serviceRequest: value) as $Val);
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
  $Res call(
      {Address? pickUpLocation,
      Address? dropOffLocation,
      Vehicle? vehicle,
      String currentEventId,
      ServiceType serviceType,
      ServiceRequest serviceRequest,
      bool loading});

  @override
  $AddressCopyWith<$Res>? get pickUpLocation;
  @override
  $AddressCopyWith<$Res>? get dropOffLocation;
  @override
  $VehicleCopyWith<$Res>? get vehicle;
  @override
  $ServiceRequestCopyWith<$Res> get serviceRequest;
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
    Object? vehicle = freezed,
    Object? currentEventId = null,
    Object? serviceType = null,
    Object? serviceRequest = null,
    Object? loading = null,
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
      vehicle: freezed == vehicle
          ? _value.vehicle
          : vehicle // ignore: cast_nullable_to_non_nullable
              as Vehicle?,
      currentEventId: null == currentEventId
          ? _value.currentEventId
          : currentEventId // ignore: cast_nullable_to_non_nullable
              as String,
      serviceType: null == serviceType
          ? _value.serviceType
          : serviceType // ignore: cast_nullable_to_non_nullable
              as ServiceType,
      serviceRequest: null == serviceRequest
          ? _value.serviceRequest
          : serviceRequest // ignore: cast_nullable_to_non_nullable
              as ServiceRequest,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MapServiceState implements _MapServiceState {
  _$_MapServiceState(
      {required this.pickUpLocation,
      required this.dropOffLocation,
      required this.vehicle,
      required this.currentEventId,
      required this.serviceType,
      required this.serviceRequest,
      required this.loading});

  factory _$_MapServiceState.fromJson(Map<String, dynamic> json) =>
      _$$_MapServiceStateFromJson(json);

  @override
  final Address? pickUpLocation;
  @override
  final Address? dropOffLocation;
  @override
  final Vehicle? vehicle;
  @override
  final String currentEventId;
  @override
  final ServiceType serviceType;
  @override
  final ServiceRequest serviceRequest;
  @override
  final bool loading;

  @override
  String toString() {
    return 'MapServiceState(pickUpLocation: $pickUpLocation, dropOffLocation: $dropOffLocation, vehicle: $vehicle, currentEventId: $currentEventId, serviceType: $serviceType, serviceRequest: $serviceRequest, loading: $loading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MapServiceState &&
            (identical(other.pickUpLocation, pickUpLocation) ||
                other.pickUpLocation == pickUpLocation) &&
            (identical(other.dropOffLocation, dropOffLocation) ||
                other.dropOffLocation == dropOffLocation) &&
            (identical(other.vehicle, vehicle) || other.vehicle == vehicle) &&
            (identical(other.currentEventId, currentEventId) ||
                other.currentEventId == currentEventId) &&
            (identical(other.serviceType, serviceType) ||
                other.serviceType == serviceType) &&
            (identical(other.serviceRequest, serviceRequest) ||
                other.serviceRequest == serviceRequest) &&
            (identical(other.loading, loading) || other.loading == loading));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, pickUpLocation, dropOffLocation,
      vehicle, currentEventId, serviceType, serviceRequest, loading);

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
      required final Address? dropOffLocation,
      required final Vehicle? vehicle,
      required final String currentEventId,
      required final ServiceType serviceType,
      required final ServiceRequest serviceRequest,
      required final bool loading}) = _$_MapServiceState;

  factory _MapServiceState.fromJson(Map<String, dynamic> json) =
      _$_MapServiceState.fromJson;

  @override
  Address? get pickUpLocation;
  @override
  Address? get dropOffLocation;
  @override
  Vehicle? get vehicle;
  @override
  String get currentEventId;
  @override
  ServiceType get serviceType;
  @override
  ServiceRequest get serviceRequest;
  @override
  bool get loading;
  @override
  @JsonKey(ignore: true)
  _$$_MapServiceStateCopyWith<_$_MapServiceState> get copyWith =>
      throw _privateConstructorUsedError;
}
