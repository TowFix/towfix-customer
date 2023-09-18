// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'overview_polyline.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OverviewPolyline _$OverviewPolylineFromJson(Map<String, dynamic> json) {
  return _OverviewPolyline.fromJson(json);
}

/// @nodoc
mixin _$OverviewPolyline {
  String? get points => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OverviewPolylineCopyWith<OverviewPolyline> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OverviewPolylineCopyWith<$Res> {
  factory $OverviewPolylineCopyWith(
          OverviewPolyline value, $Res Function(OverviewPolyline) then) =
      _$OverviewPolylineCopyWithImpl<$Res, OverviewPolyline>;
  @useResult
  $Res call({String? points});
}

/// @nodoc
class _$OverviewPolylineCopyWithImpl<$Res, $Val extends OverviewPolyline>
    implements $OverviewPolylineCopyWith<$Res> {
  _$OverviewPolylineCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? points = freezed,
  }) {
    return _then(_value.copyWith(
      points: freezed == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OverviewPolylineCopyWith<$Res>
    implements $OverviewPolylineCopyWith<$Res> {
  factory _$$_OverviewPolylineCopyWith(
          _$_OverviewPolyline value, $Res Function(_$_OverviewPolyline) then) =
      __$$_OverviewPolylineCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? points});
}

/// @nodoc
class __$$_OverviewPolylineCopyWithImpl<$Res>
    extends _$OverviewPolylineCopyWithImpl<$Res, _$_OverviewPolyline>
    implements _$$_OverviewPolylineCopyWith<$Res> {
  __$$_OverviewPolylineCopyWithImpl(
      _$_OverviewPolyline _value, $Res Function(_$_OverviewPolyline) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? points = freezed,
  }) {
    return _then(_$_OverviewPolyline(
      points: freezed == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OverviewPolyline implements _OverviewPolyline {
  _$_OverviewPolyline({this.points});

  factory _$_OverviewPolyline.fromJson(Map<String, dynamic> json) =>
      _$$_OverviewPolylineFromJson(json);

  @override
  final String? points;

  @override
  String toString() {
    return 'OverviewPolyline(points: $points)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OverviewPolyline &&
            (identical(other.points, points) || other.points == points));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, points);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OverviewPolylineCopyWith<_$_OverviewPolyline> get copyWith =>
      __$$_OverviewPolylineCopyWithImpl<_$_OverviewPolyline>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OverviewPolylineToJson(
      this,
    );
  }
}

abstract class _OverviewPolyline implements OverviewPolyline {
  factory _OverviewPolyline({final String? points}) = _$_OverviewPolyline;

  factory _OverviewPolyline.fromJson(Map<String, dynamic> json) =
      _$_OverviewPolyline.fromJson;

  @override
  String? get points;
  @override
  @JsonKey(ignore: true)
  _$$_OverviewPolylineCopyWith<_$_OverviewPolyline> get copyWith =>
      throw _privateConstructorUsedError;
}
