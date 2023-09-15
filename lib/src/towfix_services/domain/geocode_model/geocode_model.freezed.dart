// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'geocode_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GeocodeModel _$GeocodeModelFromJson(Map<String, dynamic> json) {
  return _GeocodeModel.fromJson(json);
}

/// @nodoc
mixin _$GeocodeModel {
  @JsonKey(name: 'plus_code')
  PlusCode? get plusCode => throw _privateConstructorUsedError;
  List<GeocodeResult>? get results => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeocodeModelCopyWith<GeocodeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeocodeModelCopyWith<$Res> {
  factory $GeocodeModelCopyWith(
          GeocodeModel value, $Res Function(GeocodeModel) then) =
      _$GeocodeModelCopyWithImpl<$Res, GeocodeModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'plus_code') PlusCode? plusCode,
      List<GeocodeResult>? results,
      String? status});

  $PlusCodeCopyWith<$Res>? get plusCode;
}

/// @nodoc
class _$GeocodeModelCopyWithImpl<$Res, $Val extends GeocodeModel>
    implements $GeocodeModelCopyWith<$Res> {
  _$GeocodeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plusCode = freezed,
    Object? results = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      plusCode: freezed == plusCode
          ? _value.plusCode
          : plusCode // ignore: cast_nullable_to_non_nullable
              as PlusCode?,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<GeocodeResult>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PlusCodeCopyWith<$Res>? get plusCode {
    if (_value.plusCode == null) {
      return null;
    }

    return $PlusCodeCopyWith<$Res>(_value.plusCode!, (value) {
      return _then(_value.copyWith(plusCode: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GeocodeModelCopyWith<$Res>
    implements $GeocodeModelCopyWith<$Res> {
  factory _$$_GeocodeModelCopyWith(
          _$_GeocodeModel value, $Res Function(_$_GeocodeModel) then) =
      __$$_GeocodeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'plus_code') PlusCode? plusCode,
      List<GeocodeResult>? results,
      String? status});

  @override
  $PlusCodeCopyWith<$Res>? get plusCode;
}

/// @nodoc
class __$$_GeocodeModelCopyWithImpl<$Res>
    extends _$GeocodeModelCopyWithImpl<$Res, _$_GeocodeModel>
    implements _$$_GeocodeModelCopyWith<$Res> {
  __$$_GeocodeModelCopyWithImpl(
      _$_GeocodeModel _value, $Res Function(_$_GeocodeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plusCode = freezed,
    Object? results = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_GeocodeModel(
      plusCode: freezed == plusCode
          ? _value.plusCode
          : plusCode // ignore: cast_nullable_to_non_nullable
              as PlusCode?,
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<GeocodeResult>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GeocodeModel implements _GeocodeModel {
  _$_GeocodeModel(
      {@JsonKey(name: 'plus_code') this.plusCode,
      final List<GeocodeResult>? results,
      this.status})
      : _results = results;

  factory _$_GeocodeModel.fromJson(Map<String, dynamic> json) =>
      _$$_GeocodeModelFromJson(json);

  @override
  @JsonKey(name: 'plus_code')
  final PlusCode? plusCode;
  final List<GeocodeResult>? _results;
  @override
  List<GeocodeResult>? get results {
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
    return 'GeocodeModel(plusCode: $plusCode, results: $results, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GeocodeModel &&
            (identical(other.plusCode, plusCode) ||
                other.plusCode == plusCode) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, plusCode,
      const DeepCollectionEquality().hash(_results), status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GeocodeModelCopyWith<_$_GeocodeModel> get copyWith =>
      __$$_GeocodeModelCopyWithImpl<_$_GeocodeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GeocodeModelToJson(
      this,
    );
  }
}

abstract class _GeocodeModel implements GeocodeModel {
  factory _GeocodeModel(
      {@JsonKey(name: 'plus_code') final PlusCode? plusCode,
      final List<GeocodeResult>? results,
      final String? status}) = _$_GeocodeModel;

  factory _GeocodeModel.fromJson(Map<String, dynamic> json) =
      _$_GeocodeModel.fromJson;

  @override
  @JsonKey(name: 'plus_code')
  PlusCode? get plusCode;
  @override
  List<GeocodeResult>? get results;
  @override
  String? get status;
  @override
  @JsonKey(ignore: true)
  _$$_GeocodeModelCopyWith<_$_GeocodeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
