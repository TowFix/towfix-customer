// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leg.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Leg _$LegFromJson(Map<String, dynamic> json) {
  return _Leg.fromJson(json);
}

/// @nodoc
mixin _$Leg {
  Distance? get distance => throw _privateConstructorUsedError;
  Duration? get duration => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_address')
  String? get endAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_location')
  EndLocation? get endLocation => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_address')
  String? get startAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_location')
  StartLocation? get startLocation => throw _privateConstructorUsedError;
  List<Step>? get steps => throw _privateConstructorUsedError;
  @JsonKey(name: 'traffic_speed_entry')
  List<dynamic>? get trafficSpeedEntry => throw _privateConstructorUsedError;
  @JsonKey(name: 'via_waypoint')
  List<dynamic>? get viaWaypoint => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LegCopyWith<Leg> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LegCopyWith<$Res> {
  factory $LegCopyWith(Leg value, $Res Function(Leg) then) =
      _$LegCopyWithImpl<$Res, Leg>;
  @useResult
  $Res call(
      {Distance? distance,
      Duration? duration,
      @JsonKey(name: 'end_address') String? endAddress,
      @JsonKey(name: 'end_location') EndLocation? endLocation,
      @JsonKey(name: 'start_address') String? startAddress,
      @JsonKey(name: 'start_location') StartLocation? startLocation,
      List<Step>? steps,
      @JsonKey(name: 'traffic_speed_entry') List<dynamic>? trafficSpeedEntry,
      @JsonKey(name: 'via_waypoint') List<dynamic>? viaWaypoint});

  $DistanceCopyWith<$Res>? get distance;
  $DurationCopyWith<$Res>? get duration;
  $EndLocationCopyWith<$Res>? get endLocation;
  $StartLocationCopyWith<$Res>? get startLocation;
}

/// @nodoc
class _$LegCopyWithImpl<$Res, $Val extends Leg> implements $LegCopyWith<$Res> {
  _$LegCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distance = freezed,
    Object? duration = freezed,
    Object? endAddress = freezed,
    Object? endLocation = freezed,
    Object? startAddress = freezed,
    Object? startLocation = freezed,
    Object? steps = freezed,
    Object? trafficSpeedEntry = freezed,
    Object? viaWaypoint = freezed,
  }) {
    return _then(_value.copyWith(
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as Distance?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration?,
      endAddress: freezed == endAddress
          ? _value.endAddress
          : endAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      endLocation: freezed == endLocation
          ? _value.endLocation
          : endLocation // ignore: cast_nullable_to_non_nullable
              as EndLocation?,
      startAddress: freezed == startAddress
          ? _value.startAddress
          : startAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      startLocation: freezed == startLocation
          ? _value.startLocation
          : startLocation // ignore: cast_nullable_to_non_nullable
              as StartLocation?,
      steps: freezed == steps
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<Step>?,
      trafficSpeedEntry: freezed == trafficSpeedEntry
          ? _value.trafficSpeedEntry
          : trafficSpeedEntry // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      viaWaypoint: freezed == viaWaypoint
          ? _value.viaWaypoint
          : viaWaypoint // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DistanceCopyWith<$Res>? get distance {
    if (_value.distance == null) {
      return null;
    }

    return $DistanceCopyWith<$Res>(_value.distance!, (value) {
      return _then(_value.copyWith(distance: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DurationCopyWith<$Res>? get duration {
    if (_value.duration == null) {
      return null;
    }

    return $DurationCopyWith<$Res>(_value.duration!, (value) {
      return _then(_value.copyWith(duration: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $EndLocationCopyWith<$Res>? get endLocation {
    if (_value.endLocation == null) {
      return null;
    }

    return $EndLocationCopyWith<$Res>(_value.endLocation!, (value) {
      return _then(_value.copyWith(endLocation: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StartLocationCopyWith<$Res>? get startLocation {
    if (_value.startLocation == null) {
      return null;
    }

    return $StartLocationCopyWith<$Res>(_value.startLocation!, (value) {
      return _then(_value.copyWith(startLocation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LegCopyWith<$Res> implements $LegCopyWith<$Res> {
  factory _$$_LegCopyWith(_$_Leg value, $Res Function(_$_Leg) then) =
      __$$_LegCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Distance? distance,
      Duration? duration,
      @JsonKey(name: 'end_address') String? endAddress,
      @JsonKey(name: 'end_location') EndLocation? endLocation,
      @JsonKey(name: 'start_address') String? startAddress,
      @JsonKey(name: 'start_location') StartLocation? startLocation,
      List<Step>? steps,
      @JsonKey(name: 'traffic_speed_entry') List<dynamic>? trafficSpeedEntry,
      @JsonKey(name: 'via_waypoint') List<dynamic>? viaWaypoint});

  @override
  $DistanceCopyWith<$Res>? get distance;
  @override
  $DurationCopyWith<$Res>? get duration;
  @override
  $EndLocationCopyWith<$Res>? get endLocation;
  @override
  $StartLocationCopyWith<$Res>? get startLocation;
}

/// @nodoc
class __$$_LegCopyWithImpl<$Res> extends _$LegCopyWithImpl<$Res, _$_Leg>
    implements _$$_LegCopyWith<$Res> {
  __$$_LegCopyWithImpl(_$_Leg _value, $Res Function(_$_Leg) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distance = freezed,
    Object? duration = freezed,
    Object? endAddress = freezed,
    Object? endLocation = freezed,
    Object? startAddress = freezed,
    Object? startLocation = freezed,
    Object? steps = freezed,
    Object? trafficSpeedEntry = freezed,
    Object? viaWaypoint = freezed,
  }) {
    return _then(_$_Leg(
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as Distance?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration?,
      endAddress: freezed == endAddress
          ? _value.endAddress
          : endAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      endLocation: freezed == endLocation
          ? _value.endLocation
          : endLocation // ignore: cast_nullable_to_non_nullable
              as EndLocation?,
      startAddress: freezed == startAddress
          ? _value.startAddress
          : startAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      startLocation: freezed == startLocation
          ? _value.startLocation
          : startLocation // ignore: cast_nullable_to_non_nullable
              as StartLocation?,
      steps: freezed == steps
          ? _value._steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<Step>?,
      trafficSpeedEntry: freezed == trafficSpeedEntry
          ? _value._trafficSpeedEntry
          : trafficSpeedEntry // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      viaWaypoint: freezed == viaWaypoint
          ? _value._viaWaypoint
          : viaWaypoint // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Leg implements _Leg {
  _$_Leg(
      {this.distance,
      this.duration,
      @JsonKey(name: 'end_address') this.endAddress,
      @JsonKey(name: 'end_location') this.endLocation,
      @JsonKey(name: 'start_address') this.startAddress,
      @JsonKey(name: 'start_location') this.startLocation,
      final List<Step>? steps,
      @JsonKey(name: 'traffic_speed_entry')
      final List<dynamic>? trafficSpeedEntry,
      @JsonKey(name: 'via_waypoint') final List<dynamic>? viaWaypoint})
      : _steps = steps,
        _trafficSpeedEntry = trafficSpeedEntry,
        _viaWaypoint = viaWaypoint;

  factory _$_Leg.fromJson(Map<String, dynamic> json) => _$$_LegFromJson(json);

  @override
  final Distance? distance;
  @override
  final Duration? duration;
  @override
  @JsonKey(name: 'end_address')
  final String? endAddress;
  @override
  @JsonKey(name: 'end_location')
  final EndLocation? endLocation;
  @override
  @JsonKey(name: 'start_address')
  final String? startAddress;
  @override
  @JsonKey(name: 'start_location')
  final StartLocation? startLocation;
  final List<Step>? _steps;
  @override
  List<Step>? get steps {
    final value = _steps;
    if (value == null) return null;
    if (_steps is EqualUnmodifiableListView) return _steps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _trafficSpeedEntry;
  @override
  @JsonKey(name: 'traffic_speed_entry')
  List<dynamic>? get trafficSpeedEntry {
    final value = _trafficSpeedEntry;
    if (value == null) return null;
    if (_trafficSpeedEntry is EqualUnmodifiableListView)
      return _trafficSpeedEntry;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _viaWaypoint;
  @override
  @JsonKey(name: 'via_waypoint')
  List<dynamic>? get viaWaypoint {
    final value = _viaWaypoint;
    if (value == null) return null;
    if (_viaWaypoint is EqualUnmodifiableListView) return _viaWaypoint;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Leg(distance: $distance, duration: $duration, endAddress: $endAddress, endLocation: $endLocation, startAddress: $startAddress, startLocation: $startLocation, steps: $steps, trafficSpeedEntry: $trafficSpeedEntry, viaWaypoint: $viaWaypoint)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Leg &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.endAddress, endAddress) ||
                other.endAddress == endAddress) &&
            (identical(other.endLocation, endLocation) ||
                other.endLocation == endLocation) &&
            (identical(other.startAddress, startAddress) ||
                other.startAddress == startAddress) &&
            (identical(other.startLocation, startLocation) ||
                other.startLocation == startLocation) &&
            const DeepCollectionEquality().equals(other._steps, _steps) &&
            const DeepCollectionEquality()
                .equals(other._trafficSpeedEntry, _trafficSpeedEntry) &&
            const DeepCollectionEquality()
                .equals(other._viaWaypoint, _viaWaypoint));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      distance,
      duration,
      endAddress,
      endLocation,
      startAddress,
      startLocation,
      const DeepCollectionEquality().hash(_steps),
      const DeepCollectionEquality().hash(_trafficSpeedEntry),
      const DeepCollectionEquality().hash(_viaWaypoint));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LegCopyWith<_$_Leg> get copyWith =>
      __$$_LegCopyWithImpl<_$_Leg>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LegToJson(
      this,
    );
  }
}

abstract class _Leg implements Leg {
  factory _Leg(
          {final Distance? distance,
          final Duration? duration,
          @JsonKey(name: 'end_address') final String? endAddress,
          @JsonKey(name: 'end_location') final EndLocation? endLocation,
          @JsonKey(name: 'start_address') final String? startAddress,
          @JsonKey(name: 'start_location') final StartLocation? startLocation,
          final List<Step>? steps,
          @JsonKey(name: 'traffic_speed_entry')
          final List<dynamic>? trafficSpeedEntry,
          @JsonKey(name: 'via_waypoint') final List<dynamic>? viaWaypoint}) =
      _$_Leg;

  factory _Leg.fromJson(Map<String, dynamic> json) = _$_Leg.fromJson;

  @override
  Distance? get distance;
  @override
  Duration? get duration;
  @override
  @JsonKey(name: 'end_address')
  String? get endAddress;
  @override
  @JsonKey(name: 'end_location')
  EndLocation? get endLocation;
  @override
  @JsonKey(name: 'start_address')
  String? get startAddress;
  @override
  @JsonKey(name: 'start_location')
  StartLocation? get startLocation;
  @override
  List<Step>? get steps;
  @override
  @JsonKey(name: 'traffic_speed_entry')
  List<dynamic>? get trafficSpeedEntry;
  @override
  @JsonKey(name: 'via_waypoint')
  List<dynamic>? get viaWaypoint;
  @override
  @JsonKey(ignore: true)
  _$$_LegCopyWith<_$_Leg> get copyWith => throw _privateConstructorUsedError;
}
