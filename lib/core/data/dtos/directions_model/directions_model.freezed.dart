// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'directions_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DirectionsModel _$DirectionsModelFromJson(Map<String, dynamic> json) {
  return _DirectionsModel.fromJson(json);
}

/// @nodoc
mixin _$DirectionsModel {
  @JsonKey(name: 'geocoded_waypoints')
  List<GeocodedWaypoint>? get geocodedWaypoints =>
      throw _privateConstructorUsedError;
  List<Route>? get routes => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DirectionsModelCopyWith<DirectionsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DirectionsModelCopyWith<$Res> {
  factory $DirectionsModelCopyWith(
          DirectionsModel value, $Res Function(DirectionsModel) then) =
      _$DirectionsModelCopyWithImpl<$Res, DirectionsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'geocoded_waypoints')
      List<GeocodedWaypoint>? geocodedWaypoints,
      List<Route>? routes,
      String? status});
}

/// @nodoc
class _$DirectionsModelCopyWithImpl<$Res, $Val extends DirectionsModel>
    implements $DirectionsModelCopyWith<$Res> {
  _$DirectionsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? geocodedWaypoints = freezed,
    Object? routes = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      geocodedWaypoints: freezed == geocodedWaypoints
          ? _value.geocodedWaypoints
          : geocodedWaypoints // ignore: cast_nullable_to_non_nullable
              as List<GeocodedWaypoint>?,
      routes: freezed == routes
          ? _value.routes
          : routes // ignore: cast_nullable_to_non_nullable
              as List<Route>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DirectionsModelCopyWith<$Res>
    implements $DirectionsModelCopyWith<$Res> {
  factory _$$_DirectionsModelCopyWith(
          _$_DirectionsModel value, $Res Function(_$_DirectionsModel) then) =
      __$$_DirectionsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'geocoded_waypoints')
      List<GeocodedWaypoint>? geocodedWaypoints,
      List<Route>? routes,
      String? status});
}

/// @nodoc
class __$$_DirectionsModelCopyWithImpl<$Res>
    extends _$DirectionsModelCopyWithImpl<$Res, _$_DirectionsModel>
    implements _$$_DirectionsModelCopyWith<$Res> {
  __$$_DirectionsModelCopyWithImpl(
      _$_DirectionsModel _value, $Res Function(_$_DirectionsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? geocodedWaypoints = freezed,
    Object? routes = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_DirectionsModel(
      geocodedWaypoints: freezed == geocodedWaypoints
          ? _value._geocodedWaypoints
          : geocodedWaypoints // ignore: cast_nullable_to_non_nullable
              as List<GeocodedWaypoint>?,
      routes: freezed == routes
          ? _value._routes
          : routes // ignore: cast_nullable_to_non_nullable
              as List<Route>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DirectionsModel implements _DirectionsModel {
  _$_DirectionsModel(
      {@JsonKey(name: 'geocoded_waypoints')
      final List<GeocodedWaypoint>? geocodedWaypoints,
      final List<Route>? routes,
      this.status})
      : _geocodedWaypoints = geocodedWaypoints,
        _routes = routes;

  factory _$_DirectionsModel.fromJson(Map<String, dynamic> json) =>
      _$$_DirectionsModelFromJson(json);

  final List<GeocodedWaypoint>? _geocodedWaypoints;
  @override
  @JsonKey(name: 'geocoded_waypoints')
  List<GeocodedWaypoint>? get geocodedWaypoints {
    final value = _geocodedWaypoints;
    if (value == null) return null;
    if (_geocodedWaypoints is EqualUnmodifiableListView)
      return _geocodedWaypoints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Route>? _routes;
  @override
  List<Route>? get routes {
    final value = _routes;
    if (value == null) return null;
    if (_routes is EqualUnmodifiableListView) return _routes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? status;

  @override
  String toString() {
    return 'DirectionsModel(geocodedWaypoints: $geocodedWaypoints, routes: $routes, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DirectionsModel &&
            const DeepCollectionEquality()
                .equals(other._geocodedWaypoints, _geocodedWaypoints) &&
            const DeepCollectionEquality().equals(other._routes, _routes) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_geocodedWaypoints),
      const DeepCollectionEquality().hash(_routes),
      status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DirectionsModelCopyWith<_$_DirectionsModel> get copyWith =>
      __$$_DirectionsModelCopyWithImpl<_$_DirectionsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DirectionsModelToJson(
      this,
    );
  }
}

abstract class _DirectionsModel implements DirectionsModel {
  factory _DirectionsModel(
      {@JsonKey(name: 'geocoded_waypoints')
      final List<GeocodedWaypoint>? geocodedWaypoints,
      final List<Route>? routes,
      final String? status}) = _$_DirectionsModel;

  factory _DirectionsModel.fromJson(Map<String, dynamic> json) =
      _$_DirectionsModel.fromJson;

  @override
  @JsonKey(name: 'geocoded_waypoints')
  List<GeocodedWaypoint>? get geocodedWaypoints;
  @override
  List<Route>? get routes;
  @override
  String? get status;
  @override
  @JsonKey(ignore: true)
  _$$_DirectionsModelCopyWith<_$_DirectionsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
