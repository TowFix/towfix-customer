// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'polyline.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Polyline _$PolylineFromJson(Map<String, dynamic> json) {
  return _Polyline.fromJson(json);
}

/// @nodoc
mixin _$Polyline {
  String? get points => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PolylineCopyWith<Polyline> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PolylineCopyWith<$Res> {
  factory $PolylineCopyWith(Polyline value, $Res Function(Polyline) then) =
      _$PolylineCopyWithImpl<$Res, Polyline>;
  @useResult
  $Res call({String? points});
}

/// @nodoc
class _$PolylineCopyWithImpl<$Res, $Val extends Polyline>
    implements $PolylineCopyWith<$Res> {
  _$PolylineCopyWithImpl(this._value, this._then);

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
abstract class _$$_PolylineCopyWith<$Res> implements $PolylineCopyWith<$Res> {
  factory _$$_PolylineCopyWith(
          _$_Polyline value, $Res Function(_$_Polyline) then) =
      __$$_PolylineCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? points});
}

/// @nodoc
class __$$_PolylineCopyWithImpl<$Res>
    extends _$PolylineCopyWithImpl<$Res, _$_Polyline>
    implements _$$_PolylineCopyWith<$Res> {
  __$$_PolylineCopyWithImpl(
      _$_Polyline _value, $Res Function(_$_Polyline) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? points = freezed,
  }) {
    return _then(_$_Polyline(
      points: freezed == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Polyline implements _Polyline {
  _$_Polyline({this.points});

  factory _$_Polyline.fromJson(Map<String, dynamic> json) =>
      _$$_PolylineFromJson(json);

  @override
  final String? points;

  @override
  String toString() {
    return 'Polyline(points: $points)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Polyline &&
            (identical(other.points, points) || other.points == points));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, points);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PolylineCopyWith<_$_Polyline> get copyWith =>
      __$$_PolylineCopyWithImpl<_$_Polyline>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PolylineToJson(
      this,
    );
  }
}

abstract class _Polyline implements Polyline {
  factory _Polyline({final String? points}) = _$_Polyline;

  factory _Polyline.fromJson(Map<String, dynamic> json) = _$_Polyline.fromJson;

  @override
  String? get points;
  @override
  @JsonKey(ignore: true)
  _$$_PolylineCopyWith<_$_Polyline> get copyWith =>
      throw _privateConstructorUsedError;
}
