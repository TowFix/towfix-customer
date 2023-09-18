// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'geocoding_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GeocodingModel _$GeocodingModelFromJson(Map<String, dynamic> json) {
  return _GeocodingModel.fromJson(json);
}

/// @nodoc
mixin _$GeocodingModel {
  List<GeocodingResult>? get results => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeocodingModelCopyWith<GeocodingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeocodingModelCopyWith<$Res> {
  factory $GeocodingModelCopyWith(
          GeocodingModel value, $Res Function(GeocodingModel) then) =
      _$GeocodingModelCopyWithImpl<$Res, GeocodingModel>;
  @useResult
  $Res call({List<GeocodingResult>? results, String? status});
}

/// @nodoc
class _$GeocodingModelCopyWithImpl<$Res, $Val extends GeocodingModel>
    implements $GeocodingModelCopyWith<$Res> {
  _$GeocodingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<GeocodingResult>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GeocodingModelCopyWith<$Res>
    implements $GeocodingModelCopyWith<$Res> {
  factory _$$_GeocodingModelCopyWith(
          _$_GeocodingModel value, $Res Function(_$_GeocodingModel) then) =
      __$$_GeocodingModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<GeocodingResult>? results, String? status});
}

/// @nodoc
class __$$_GeocodingModelCopyWithImpl<$Res>
    extends _$GeocodingModelCopyWithImpl<$Res, _$_GeocodingModel>
    implements _$$_GeocodingModelCopyWith<$Res> {
  __$$_GeocodingModelCopyWithImpl(
      _$_GeocodingModel _value, $Res Function(_$_GeocodingModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_GeocodingModel(
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<GeocodingResult>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GeocodingModel implements _GeocodingModel {
  _$_GeocodingModel({final List<GeocodingResult>? results, this.status})
      : _results = results;

  factory _$_GeocodingModel.fromJson(Map<String, dynamic> json) =>
      _$$_GeocodingModelFromJson(json);

  final List<GeocodingResult>? _results;
  @override
  List<GeocodingResult>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? status;

  @override
  String toString() {
    return 'GeocodingModel(results: $results, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GeocodingModel &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_results), status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GeocodingModelCopyWith<_$_GeocodingModel> get copyWith =>
      __$$_GeocodingModelCopyWithImpl<_$_GeocodingModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GeocodingModelToJson(
      this,
    );
  }
}

abstract class _GeocodingModel implements GeocodingModel {
  factory _GeocodingModel(
      {final List<GeocodingResult>? results,
      final String? status}) = _$_GeocodingModel;

  factory _GeocodingModel.fromJson(Map<String, dynamic> json) =
      _$_GeocodingModel.fromJson;

  @override
  List<GeocodingResult>? get results;
  @override
  String? get status;
  @override
  @JsonKey(ignore: true)
  _$$_GeocodingModelCopyWith<_$_GeocodingModel> get copyWith =>
      throw _privateConstructorUsedError;
}
