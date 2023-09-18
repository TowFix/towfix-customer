// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'step.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Step _$StepFromJson(Map<String, dynamic> json) {
  return _Step.fromJson(json);
}

/// @nodoc
mixin _$Step {
  Distance? get distance => throw _privateConstructorUsedError;
  Duration? get duration => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_location')
  EndLocation? get endLocation => throw _privateConstructorUsedError;
  @JsonKey(name: 'html_instructions')
  String? get htmlInstructions => throw _privateConstructorUsedError;
  Polyline? get polyline => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_location')
  StartLocation? get startLocation => throw _privateConstructorUsedError;
  @JsonKey(name: 'travel_mode')
  String? get travelMode => throw _privateConstructorUsedError;
  String? get maneuver => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StepCopyWith<Step> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StepCopyWith<$Res> {
  factory $StepCopyWith(Step value, $Res Function(Step) then) =
      _$StepCopyWithImpl<$Res, Step>;
  @useResult
  $Res call(
      {Distance? distance,
      Duration? duration,
      @JsonKey(name: 'end_location') EndLocation? endLocation,
      @JsonKey(name: 'html_instructions') String? htmlInstructions,
      Polyline? polyline,
      @JsonKey(name: 'start_location') StartLocation? startLocation,
      @JsonKey(name: 'travel_mode') String? travelMode,
      String? maneuver});

  $DistanceCopyWith<$Res>? get distance;
  $DurationCopyWith<$Res>? get duration;
  $EndLocationCopyWith<$Res>? get endLocation;
  $PolylineCopyWith<$Res>? get polyline;
  $StartLocationCopyWith<$Res>? get startLocation;
}

/// @nodoc
class _$StepCopyWithImpl<$Res, $Val extends Step>
    implements $StepCopyWith<$Res> {
  _$StepCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distance = freezed,
    Object? duration = freezed,
    Object? endLocation = freezed,
    Object? htmlInstructions = freezed,
    Object? polyline = freezed,
    Object? startLocation = freezed,
    Object? travelMode = freezed,
    Object? maneuver = freezed,
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
      endLocation: freezed == endLocation
          ? _value.endLocation
          : endLocation // ignore: cast_nullable_to_non_nullable
              as EndLocation?,
      htmlInstructions: freezed == htmlInstructions
          ? _value.htmlInstructions
          : htmlInstructions // ignore: cast_nullable_to_non_nullable
              as String?,
      polyline: freezed == polyline
          ? _value.polyline
          : polyline // ignore: cast_nullable_to_non_nullable
              as Polyline?,
      startLocation: freezed == startLocation
          ? _value.startLocation
          : startLocation // ignore: cast_nullable_to_non_nullable
              as StartLocation?,
      travelMode: freezed == travelMode
          ? _value.travelMode
          : travelMode // ignore: cast_nullable_to_non_nullable
              as String?,
      maneuver: freezed == maneuver
          ? _value.maneuver
          : maneuver // ignore: cast_nullable_to_non_nullable
              as String?,
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
  $PolylineCopyWith<$Res>? get polyline {
    if (_value.polyline == null) {
      return null;
    }

    return $PolylineCopyWith<$Res>(_value.polyline!, (value) {
      return _then(_value.copyWith(polyline: value) as $Val);
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
abstract class _$$_StepCopyWith<$Res> implements $StepCopyWith<$Res> {
  factory _$$_StepCopyWith(_$_Step value, $Res Function(_$_Step) then) =
      __$$_StepCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Distance? distance,
      Duration? duration,
      @JsonKey(name: 'end_location') EndLocation? endLocation,
      @JsonKey(name: 'html_instructions') String? htmlInstructions,
      Polyline? polyline,
      @JsonKey(name: 'start_location') StartLocation? startLocation,
      @JsonKey(name: 'travel_mode') String? travelMode,
      String? maneuver});

  @override
  $DistanceCopyWith<$Res>? get distance;
  @override
  $DurationCopyWith<$Res>? get duration;
  @override
  $EndLocationCopyWith<$Res>? get endLocation;
  @override
  $PolylineCopyWith<$Res>? get polyline;
  @override
  $StartLocationCopyWith<$Res>? get startLocation;
}

/// @nodoc
class __$$_StepCopyWithImpl<$Res> extends _$StepCopyWithImpl<$Res, _$_Step>
    implements _$$_StepCopyWith<$Res> {
  __$$_StepCopyWithImpl(_$_Step _value, $Res Function(_$_Step) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distance = freezed,
    Object? duration = freezed,
    Object? endLocation = freezed,
    Object? htmlInstructions = freezed,
    Object? polyline = freezed,
    Object? startLocation = freezed,
    Object? travelMode = freezed,
    Object? maneuver = freezed,
  }) {
    return _then(_$_Step(
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as Distance?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration?,
      endLocation: freezed == endLocation
          ? _value.endLocation
          : endLocation // ignore: cast_nullable_to_non_nullable
              as EndLocation?,
      htmlInstructions: freezed == htmlInstructions
          ? _value.htmlInstructions
          : htmlInstructions // ignore: cast_nullable_to_non_nullable
              as String?,
      polyline: freezed == polyline
          ? _value.polyline
          : polyline // ignore: cast_nullable_to_non_nullable
              as Polyline?,
      startLocation: freezed == startLocation
          ? _value.startLocation
          : startLocation // ignore: cast_nullable_to_non_nullable
              as StartLocation?,
      travelMode: freezed == travelMode
          ? _value.travelMode
          : travelMode // ignore: cast_nullable_to_non_nullable
              as String?,
      maneuver: freezed == maneuver
          ? _value.maneuver
          : maneuver // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Step implements _Step {
  _$_Step(
      {this.distance,
      this.duration,
      @JsonKey(name: 'end_location') this.endLocation,
      @JsonKey(name: 'html_instructions') this.htmlInstructions,
      this.polyline,
      @JsonKey(name: 'start_location') this.startLocation,
      @JsonKey(name: 'travel_mode') this.travelMode,
      this.maneuver});

  factory _$_Step.fromJson(Map<String, dynamic> json) => _$$_StepFromJson(json);

  @override
  final Distance? distance;
  @override
  final Duration? duration;
  @override
  @JsonKey(name: 'end_location')
  final EndLocation? endLocation;
  @override
  @JsonKey(name: 'html_instructions')
  final String? htmlInstructions;
  @override
  final Polyline? polyline;
  @override
  @JsonKey(name: 'start_location')
  final StartLocation? startLocation;
  @override
  @JsonKey(name: 'travel_mode')
  final String? travelMode;
  @override
  final String? maneuver;

  @override
  String toString() {
    return 'Step(distance: $distance, duration: $duration, endLocation: $endLocation, htmlInstructions: $htmlInstructions, polyline: $polyline, startLocation: $startLocation, travelMode: $travelMode, maneuver: $maneuver)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Step &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.endLocation, endLocation) ||
                other.endLocation == endLocation) &&
            (identical(other.htmlInstructions, htmlInstructions) ||
                other.htmlInstructions == htmlInstructions) &&
            (identical(other.polyline, polyline) ||
                other.polyline == polyline) &&
            (identical(other.startLocation, startLocation) ||
                other.startLocation == startLocation) &&
            (identical(other.travelMode, travelMode) ||
                other.travelMode == travelMode) &&
            (identical(other.maneuver, maneuver) ||
                other.maneuver == maneuver));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, distance, duration, endLocation,
      htmlInstructions, polyline, startLocation, travelMode, maneuver);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StepCopyWith<_$_Step> get copyWith =>
      __$$_StepCopyWithImpl<_$_Step>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StepToJson(
      this,
    );
  }
}

abstract class _Step implements Step {
  factory _Step(
      {final Distance? distance,
      final Duration? duration,
      @JsonKey(name: 'end_location') final EndLocation? endLocation,
      @JsonKey(name: 'html_instructions') final String? htmlInstructions,
      final Polyline? polyline,
      @JsonKey(name: 'start_location') final StartLocation? startLocation,
      @JsonKey(name: 'travel_mode') final String? travelMode,
      final String? maneuver}) = _$_Step;

  factory _Step.fromJson(Map<String, dynamic> json) = _$_Step.fromJson;

  @override
  Distance? get distance;
  @override
  Duration? get duration;
  @override
  @JsonKey(name: 'end_location')
  EndLocation? get endLocation;
  @override
  @JsonKey(name: 'html_instructions')
  String? get htmlInstructions;
  @override
  Polyline? get polyline;
  @override
  @JsonKey(name: 'start_location')
  StartLocation? get startLocation;
  @override
  @JsonKey(name: 'travel_mode')
  String? get travelMode;
  @override
  String? get maneuver;
  @override
  @JsonKey(ignore: true)
  _$$_StepCopyWith<_$_Step> get copyWith => throw _privateConstructorUsedError;
}
