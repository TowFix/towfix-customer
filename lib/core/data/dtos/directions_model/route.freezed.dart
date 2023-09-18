// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'route.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Route _$RouteFromJson(Map<String, dynamic> json) {
  return _Route.fromJson(json);
}

/// @nodoc
mixin _$Route {
  Bounds? get bounds => throw _privateConstructorUsedError;
  String? get copyrights => throw _privateConstructorUsedError;
  List<Leg>? get legs => throw _privateConstructorUsedError;
  @JsonKey(name: 'overview_polyline')
  OverviewPolyline? get overviewPolyline => throw _privateConstructorUsedError;
  String? get summary => throw _privateConstructorUsedError;
  List<dynamic>? get warnings => throw _privateConstructorUsedError;
  @JsonKey(name: 'waypoint_order')
  List<dynamic>? get waypointOrder => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RouteCopyWith<Route> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouteCopyWith<$Res> {
  factory $RouteCopyWith(Route value, $Res Function(Route) then) =
      _$RouteCopyWithImpl<$Res, Route>;
  @useResult
  $Res call(
      {Bounds? bounds,
      String? copyrights,
      List<Leg>? legs,
      @JsonKey(name: 'overview_polyline') OverviewPolyline? overviewPolyline,
      String? summary,
      List<dynamic>? warnings,
      @JsonKey(name: 'waypoint_order') List<dynamic>? waypointOrder});

  $BoundsCopyWith<$Res>? get bounds;
  $OverviewPolylineCopyWith<$Res>? get overviewPolyline;
}

/// @nodoc
class _$RouteCopyWithImpl<$Res, $Val extends Route>
    implements $RouteCopyWith<$Res> {
  _$RouteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bounds = freezed,
    Object? copyrights = freezed,
    Object? legs = freezed,
    Object? overviewPolyline = freezed,
    Object? summary = freezed,
    Object? warnings = freezed,
    Object? waypointOrder = freezed,
  }) {
    return _then(_value.copyWith(
      bounds: freezed == bounds
          ? _value.bounds
          : bounds // ignore: cast_nullable_to_non_nullable
              as Bounds?,
      copyrights: freezed == copyrights
          ? _value.copyrights
          : copyrights // ignore: cast_nullable_to_non_nullable
              as String?,
      legs: freezed == legs
          ? _value.legs
          : legs // ignore: cast_nullable_to_non_nullable
              as List<Leg>?,
      overviewPolyline: freezed == overviewPolyline
          ? _value.overviewPolyline
          : overviewPolyline // ignore: cast_nullable_to_non_nullable
              as OverviewPolyline?,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      warnings: freezed == warnings
          ? _value.warnings
          : warnings // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      waypointOrder: freezed == waypointOrder
          ? _value.waypointOrder
          : waypointOrder // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BoundsCopyWith<$Res>? get bounds {
    if (_value.bounds == null) {
      return null;
    }

    return $BoundsCopyWith<$Res>(_value.bounds!, (value) {
      return _then(_value.copyWith(bounds: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OverviewPolylineCopyWith<$Res>? get overviewPolyline {
    if (_value.overviewPolyline == null) {
      return null;
    }

    return $OverviewPolylineCopyWith<$Res>(_value.overviewPolyline!, (value) {
      return _then(_value.copyWith(overviewPolyline: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RouteCopyWith<$Res> implements $RouteCopyWith<$Res> {
  factory _$$_RouteCopyWith(_$_Route value, $Res Function(_$_Route) then) =
      __$$_RouteCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Bounds? bounds,
      String? copyrights,
      List<Leg>? legs,
      @JsonKey(name: 'overview_polyline') OverviewPolyline? overviewPolyline,
      String? summary,
      List<dynamic>? warnings,
      @JsonKey(name: 'waypoint_order') List<dynamic>? waypointOrder});

  @override
  $BoundsCopyWith<$Res>? get bounds;
  @override
  $OverviewPolylineCopyWith<$Res>? get overviewPolyline;
}

/// @nodoc
class __$$_RouteCopyWithImpl<$Res> extends _$RouteCopyWithImpl<$Res, _$_Route>
    implements _$$_RouteCopyWith<$Res> {
  __$$_RouteCopyWithImpl(_$_Route _value, $Res Function(_$_Route) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bounds = freezed,
    Object? copyrights = freezed,
    Object? legs = freezed,
    Object? overviewPolyline = freezed,
    Object? summary = freezed,
    Object? warnings = freezed,
    Object? waypointOrder = freezed,
  }) {
    return _then(_$_Route(
      bounds: freezed == bounds
          ? _value.bounds
          : bounds // ignore: cast_nullable_to_non_nullable
              as Bounds?,
      copyrights: freezed == copyrights
          ? _value.copyrights
          : copyrights // ignore: cast_nullable_to_non_nullable
              as String?,
      legs: freezed == legs
          ? _value._legs
          : legs // ignore: cast_nullable_to_non_nullable
              as List<Leg>?,
      overviewPolyline: freezed == overviewPolyline
          ? _value.overviewPolyline
          : overviewPolyline // ignore: cast_nullable_to_non_nullable
              as OverviewPolyline?,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      warnings: freezed == warnings
          ? _value._warnings
          : warnings // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      waypointOrder: freezed == waypointOrder
          ? _value._waypointOrder
          : waypointOrder // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Route implements _Route {
  _$_Route(
      {this.bounds,
      this.copyrights,
      final List<Leg>? legs,
      @JsonKey(name: 'overview_polyline') this.overviewPolyline,
      this.summary,
      final List<dynamic>? warnings,
      @JsonKey(name: 'waypoint_order') final List<dynamic>? waypointOrder})
      : _legs = legs,
        _warnings = warnings,
        _waypointOrder = waypointOrder;

  factory _$_Route.fromJson(Map<String, dynamic> json) =>
      _$$_RouteFromJson(json);

  @override
  final Bounds? bounds;
  @override
  final String? copyrights;
  final List<Leg>? _legs;
  @override
  List<Leg>? get legs {
    final value = _legs;
    if (value == null) return null;
    if (_legs is EqualUnmodifiableListView) return _legs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'overview_polyline')
  final OverviewPolyline? overviewPolyline;
  @override
  final String? summary;
  final List<dynamic>? _warnings;
  @override
  List<dynamic>? get warnings {
    final value = _warnings;
    if (value == null) return null;
    if (_warnings is EqualUnmodifiableListView) return _warnings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _waypointOrder;
  @override
  @JsonKey(name: 'waypoint_order')
  List<dynamic>? get waypointOrder {
    final value = _waypointOrder;
    if (value == null) return null;
    if (_waypointOrder is EqualUnmodifiableListView) return _waypointOrder;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Route(bounds: $bounds, copyrights: $copyrights, legs: $legs, overviewPolyline: $overviewPolyline, summary: $summary, warnings: $warnings, waypointOrder: $waypointOrder)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Route &&
            (identical(other.bounds, bounds) || other.bounds == bounds) &&
            (identical(other.copyrights, copyrights) ||
                other.copyrights == copyrights) &&
            const DeepCollectionEquality().equals(other._legs, _legs) &&
            (identical(other.overviewPolyline, overviewPolyline) ||
                other.overviewPolyline == overviewPolyline) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            const DeepCollectionEquality().equals(other._warnings, _warnings) &&
            const DeepCollectionEquality()
                .equals(other._waypointOrder, _waypointOrder));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      bounds,
      copyrights,
      const DeepCollectionEquality().hash(_legs),
      overviewPolyline,
      summary,
      const DeepCollectionEquality().hash(_warnings),
      const DeepCollectionEquality().hash(_waypointOrder));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RouteCopyWith<_$_Route> get copyWith =>
      __$$_RouteCopyWithImpl<_$_Route>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RouteToJson(
      this,
    );
  }
}

abstract class _Route implements Route {
  factory _Route(
      {final Bounds? bounds,
      final String? copyrights,
      final List<Leg>? legs,
      @JsonKey(name: 'overview_polyline')
      final OverviewPolyline? overviewPolyline,
      final String? summary,
      final List<dynamic>? warnings,
      @JsonKey(name: 'waypoint_order')
      final List<dynamic>? waypointOrder}) = _$_Route;

  factory _Route.fromJson(Map<String, dynamic> json) = _$_Route.fromJson;

  @override
  Bounds? get bounds;
  @override
  String? get copyrights;
  @override
  List<Leg>? get legs;
  @override
  @JsonKey(name: 'overview_polyline')
  OverviewPolyline? get overviewPolyline;
  @override
  String? get summary;
  @override
  List<dynamic>? get warnings;
  @override
  @JsonKey(name: 'waypoint_order')
  List<dynamic>? get waypointOrder;
  @override
  @JsonKey(ignore: true)
  _$$_RouteCopyWith<_$_Route> get copyWith =>
      throw _privateConstructorUsedError;
}
